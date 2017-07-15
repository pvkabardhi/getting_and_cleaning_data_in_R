## Load the dplyr library to leverage select, arrange and other functions
library(dplyr)

## 1. Merges the training and the test sets to create one data set.

## Merges the training data sets into one and renames the first two columns to subject and activity respectively
train_subject_data <- read.table("./train/subject_train.txt")
train_y_data <- read.table("./train/y_train.txt")
train_X_data <- read.table("./train/X_train.txt")
names(train_subject_data) <- "subject"
names(train_y_data) <- "activity"
train_merged_data <- cbind(train_subject_data, train_y_data, train_X_data)

## Merges the test data sets into one and renames the first two columns to subject and activity respectively
test_subject_data <- read.table("./test/subject_test.txt")
test_y_data <- read.table("./test/y_test.txt")
test_X_data <- read.table("./test/X_test.txt")
names(test_subject_data) <- "subject"
names(test_y_data) <- "activity"
test_merged_data <- cbind(test_subject_data, test_y_data, test_X_data)

## Merges the training and the test sets to create one data set.
project_data <- rbind(train_merged_data, test_merged_data)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
feature_data <- read.table("./features.txt")
project_data_meanstd <- select(project_data, c(1,2,grep("mean|std", feature_data$V2) + 2))

## 3. Uses descriptive activity names to name the activities in the data set
project_data_meanstd$activity <- recode(project_data_meanstd$activity, `1` = "Walking", `2` = "Walking Upstairs", `3`= "Walking Downstairs", `4`= "Sitting", `5` = "Standing", `6` = "Laying")

## 4. Appropriately labels the data set with descriptive variable names
feature_names <- grep("mean|std", feature_data$V2, value = TRUE)
feature_names <- sub("t", "time",feature_names )
feature_names <- sub("f", "freq",feature_names )
feature_names <- gsub("-", ".",feature_names )
feature_names <- sub("\\()", "",feature_names )
colnames(project_data_meanstd)[3:81] <- feature_names

## 5. From the data set in step 4, creates a second, independent tidy data set with 
##    the average of each variable for each activity and each subject.
##    Also, sorts the summarized data set by subject id
project_data_summarized <- arrange(aggregate(project_data_meanstd[3:81], by= list(subject = project_data_meanstd$subject, activity = project_data_meanstd$activity), FUN =  mean, na.rm = TRUE), subject)

## Writes the above summarized data to a text file
write.table(project_data_summarized, file = "tidy_data_set.txt", row.names = FALSE)

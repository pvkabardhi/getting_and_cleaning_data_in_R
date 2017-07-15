### Introduction

The Week 4 project assignment involves writing R code to extract data from the given dataset and executing a series of five steps to merge, rename columns and summarize the data eventually generating a tidy data set. 

### Source Data Set
The UCI HAR Dataset has been downloaded from the location specified in the assignment to a local folder. The data set contains 561 measurements of 30 subjects performing 6 activities. 
The following files have been used for this project assignment:
- 'README.txt' for reference
- 'features_info.txt' to get information about the variables used
- 'features.txt' to get the list of all feature names
- 'activity_labels.txt' to get the activity names
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt' to get name of the subject who performed the activity
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt' to get name of the subject who performed the activity

### Tidy Data Set
The tidy data set contains average values of mean and standard deviation measurements for the 30 subjects performing each of the six activities. Total of 180 rows and 81 columns. The first two columns described subject and activity. The remaining columns contain the average values of the measurements. 

### Steps

Before running the code, the UCI HAR Dataset has been downloaded from the location specified in the assignment to a local folder. Also, the current working directory has been changed to the local folder in R Studio. The R program uses functions from dplyr package.

The description of steps has been elaborated in README.md file : https://github.com/pvkabardhi/getting_and_cleaning_data_in_R/blob/master/README.md

The variables are described below:
## subject
integer
1-30

## activity
character
"Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing" and "Laying"

## Remaining Variables
numeric
79 variables which contain average of each variable for each activity and each subject

References:
1. Discussion Forum Code book format and templates - https://www.coursera.org/learn/data-cleaning/discussions/weeks/4/threads/8iD601XDEeaZaBIe_mhavQ
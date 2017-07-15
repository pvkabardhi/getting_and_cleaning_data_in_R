### Introduction

The Week 4 project assignment involves writing R code to extract data from the given dataset and executing a series of five steps to merge, rename columns and summarize the data eventually generating a tidy data set. 

The name of the R file is run_analysis.R

### Data Set

Before running the code, the UCI HAR Dataset has been downloaded from the location specified in the assignment to a local folder. Also, the current working directory has been changed to the local folder in R Studio. The R program uses functions from dplyr package.

### Code Description

0. Loads the dplyr library to leverage select, arrange and other functions

1. Reads three training data files separately using read.table function. Renames the first two columns to subject and activity respectively. Merges the three files using cbind function and creates one unified training data set. 

The above process is repeated for the three test data files as well to create a unified test data set. 

The unified training and test data sets are then merged using rbind to create one merged data set. 

2. Extracts the names of the features into a data frame. Using select and grep commands, the code extracts only the measurements on the mean and standard deviation for each measurement.

3. Renames the activities in the data set to descriptive activity names using recode function

4. Renames the variables in the data set to descriptive variabels names using sub, gsub and colnames functions. First the feature names are stored in a data frame. Then all the variables starting with "t" and "f" characters are replaced with "time" and "freq" respectively. All the "-" characters are replaced with "." characters. The "()" parantheses are removed. Finally the merged data set column names are updated with descriptive names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Also, sorts the summarized data set by subject id

Writes the above summarized data to a text file in the current working directory.

References:
1. Discussion Forum Course Project HELP Guide - https://www.coursera.org/learn/data-cleaning/discussions/all/threads/wDoBFcHgEeWjNw6BzriyBQ
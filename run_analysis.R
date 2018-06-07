# Getting and Cleaning Data Course Project
# Hemasundar
# June 7, 2018

# Data set: Input UCI HAR Dataset downloaded from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# run_analysis.R does the following:
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(dplyr)

# read train data
x_train <- read.table("./train/x_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

# read test data
x_test <- read.table("./test/x_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

# merge train and test data
x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
subject_total <- rbind(subject_train, subject_test)

# read features data
feat <- read.table("features.txt")
# create subset containing only mean() and std() data
features <- feat[grepl(".*\\-(mean|std)\\(\\).*", feat[,2]),]
# extract measurement data based on features subset and name them
x_total <- x_total[,features[,1]]
colnames(x_total) <- features[,2]

# read activity labels data
activity_labels <- read.table("activity_labels.txt")

# Uses descriptive activity names to name the activities in the data set
colnames(subject_total) <- "subject"
colnames(y_total) <- "activity"
y_total$activityLabel <- factor(y_total$activity, 
                                labels = as.character(activity_labels[,2]))
HAR <- cbind(subject_total, y_total, x_total)
HAR <- HAR[,-2]

# Create a second, independent tidy data set with the average
# of each variable for each activity and each subject.
HARmean <- aggregate(. ~subject + activityLabel, HAR, mean)
write.table(HARmean, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)
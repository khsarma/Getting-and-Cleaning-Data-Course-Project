# Tidy Dataset Description
## Getting and Cleaning Data Course Project

This book summarizes the data and variables in tidydata.txt, which is the output of the project and script run_analysis.R. Information on Data Set The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. As part of this project, only mean and standard deviation features out of total 561 features of input data are extracted. 66 such features are analyzed.
Hence, Tidy dataset contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.

## Inputs
Text Files Imported:
'features.txt'
'activity_labels.txt'
'subject_train.txt'
'x_train.txt'
'y_train.txt'
'subject_test.txt'
'x_test.txt'
'y_test.txt'

## Variables
subject column is numbered sequentially from 1 to 30. activityLabel column has 6 types as listed below.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
Remaining 66 variables are averaged values of mean and standard deviation related features.

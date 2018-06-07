# Getting and Cleaning Data Course - Week 4 Project

This repository contains R script and documentation related to Week 4 Project of Course - Getting and Cleaning Data.

## Overview

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. A full description of the data used in this project can be found at 'The UCI Machine Learning Repository'(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The source data for this project is available at the URL: (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Project Details
R script - run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Repository Details

1. 'CodeBook.md' contains information on all the variables and summaries calculated, along with units, and other relevant information.
2. 'run_analysis.R' is the R script used to complete the project goals.
3. 'tidydata.txt' is the output from the 'run_analysis.R' script - related to 5th point above.

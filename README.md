# getting_and_cleaning_data

Week 4 Project Getting and Cleaning Data Jonhs Hopkins University

File Name: README.md;

Creator: Sofia Campo;

Course: Getting and Cleaning Data Project, Jonhs Hopkins Data Science Specialization;

Date: February 2019

This repository contains the R script, the output of the R script, and the support documentation, of the 'Getting and Cleaning Data' course project from the Jonhs Hopkins Data Science Specialization.

The purpose of the project is to demonstrate the ability to collect, work with, and clean data. The goal is to prepare tidy data that can be used for later analysis
The data linked from the course website represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data can be downloaded from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The R script called 'Run_Analysis.R' does the following:

1. Merges the training and the test sets to create one data set;
2. Extracts only the measurements on the mean and standard deviation for each measurement;
3. Uses descriptive activity names to name the activities in the data set;
4. Appropriately labels the data set with descriptive variable names;
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The file 'Code_Book.md' contains information on the variables, dataset, transformations, and work that was done with the data.

The file 'Tidy_Data.txt' contains the output of the 'Run_Analysis.R' R script.


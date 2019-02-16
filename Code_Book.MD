File Name: Code_Book.MD
Creator: Sofia Campo
Course: Getting and Cleaning Data Project, Jonhs Hopkins Data Science Specialization
Date: February 2019

This document is the CodeBook for the 'Getting and Cleaning Data' course project from the Jonhs Hopkins Data Science Specialization.

1. Dataset Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration 
signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a 
filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


2. Attribute Information

For each record in the dataset it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

3.Identifiers

- subject (ID of the test subject)
- activity (type of activity performed when the corresponding measurements were taken)

4. Activity Labels

- WALKING (value 1): subject was walking during the test
- WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
- WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
- SITTING (value 4): subject was sitting during the test
- STANDING (value 5): subject was standing during the test
- LAYING (value 6): subject was laying down during the test

5. Units

The Activity variable is type factor. THe Subject variable is type integer. All the other variables are  numeric type.

6. Measurements

    "activity"
    "subject"
    "tBodyAcc-mean()-X"
    "tBodyAcc-mean()-Y"
    "tBodyAcc-mean()-Z"
    "tBodyAcc-std()-X"
    "tBodyAcc-std()-Y"
    "tBodyAcc-std()-Z"
    "tGravityAcc-mean()-X"
    "tGravityAcc-mean()-Y"
    "tGravityAcc-mean()-Z"
    "tGravityAcc-std()-X"
    "tGravityAcc-std()-Y"
    "tGravityAcc-std()-Z"
    "tBodyAccJerk-mean()-X"
    "tBodyAccJerk-mean()-Y"
    "tBodyAccJerk-mean()-Z"
    "tBodyAccJerk-std()-X"
    "tBodyAccJerk-std()-Y"
    "tBodyAccJerk-std()-Z"
    "tBodyGyro-mean()-X"
    "tBodyGyro-mean()-Y"
    "tBodyGyro-mean()-Z"
    "tBodyGyro-std()-X"
    "tBodyGyro-std()-Y"
    "tBodyGyro-std()-Z"
    "tBodyGyroJerk-mean()-X"
    "tBodyGyroJerk-mean()-Y"
    "tBodyGyroJerk-mean()-Z"
    "tBodyGyroJerk-std()-X"
    "tBodyGyroJerk-std()-Y"
    "tBodyGyroJerk-std()-Z"
    "tBodyAccMag-mean()"
    "tBodyAccMag-std()"
    "tGravityAccMag-mean()"
    "tGravityAccMag-std()"
    "tBodyAccJerkMag-mean()"
    "tBodyAccJerkMag-std()"
    "tBodyGyroMag-mean()"
    "tBodyGyroMag-std()"
    "tBodyGyroJerkMag-mean()"
    "tBodyGyroJerkMag-std()"
    "fBodyAcc-mean()-X"
    "fBodyAcc-mean()-Y"
    "fBodyAcc-mean()-Z"
    "fBodyAcc-std()-X"
    "fBodyAcc-std()-Y"
    "fBodyAcc-std()-Z"
    "fBodyAccJerk-mean()-X"
    "fBodyAccJerk-mean()-Y"
    "fBodyAccJerk-mean()-Z"
    "fBodyAccJerk-std()-X"
    "fBodyAccJerk-std()-Y"
    "fBodyAccJerk-std()-Z"
    "fBodyGyro-mean()-X"
    "fBodyGyro-mean()-Y"
    "fBodyGyro-mean()-Z"
    "fBodyGyro-std()-X"
    "fBodyGyro-std()-Y"
    "fBodyGyro-std()-Z"
    "fBodyAccMag-mean()"
    "fBodyAccMag-std()"
    "fBodyBodyAccJerkMag-mean()"
    "fBodyBodyAccJerkMag-std()"
    "fBodyBodyGyroMag-mean()"
    "fBodyBodyGyroMag-std()"
    "fBodyBodyGyroJerkMag-mean()"
    "fBodyBodyGyroJerkMag-std()"

7. Procedures

The following text files were imported:

-Features and Activity Labels

    'features.txt'
    'activity_labels.txt

-Training sets

    'subject_train.txt'
    'x_train.txt'
    'y_train.txt'

-Test sets

    'subject_test.txt'
    'x_test.txt'
    'y_test.txt'

The files were merged into:

     'X_Merged <- rbind(X_train, X_test)'
     'Y_Merged <- rbind(Y_train, Y_test)'
     'Sub_Merged <- rbind(Sub_train, Sub_test)'

The statistical measures Mean and SD were extracted and merged data was subsetted to keep the relevant columns. The activities dataset was renamed 
and merged with the subsetted data to add descriptive activity names to merged and subsetted data. A label dataset with descriptive variable names 
was created. The final output is a tidy dataset with the average of each variable per activity and subject.

# Code Book

## Overview:
This is the Code Book for the Coursera Data Science Track Specialization, Getting 
and Cleaning Data course project.


## The data
The resulting tidy_data.txt data set contains 180 observations and 68 variables.


## Variables

| Variables |
| ---------------------------- |
| Subject |
| Activity |
| tBodyAcc-mean()-X |
| tBodyAcc-mean()-Y |
| tBodyAcc-mean()-Z |
| tGravityAcc-mean()-X |
| tGravityAcc-mean()-Y |
| tGravityAcc-mean()-Z |
| tBodyAccJerk-mean()-X |
| tBodyAccJerk-mean()-Y |
| tBodyAccJerk-mean()-Z |
| tBodyGyro-mean()-X |
| tBodyGyro-mean()-Y |
| tBodyGyro-mean()-Z |
| tBodyGyroJerk-mean()-X |
| tBodyGyroJerk-mean()-Y |
| tBodyGyroJerk-mean()-Z |
| tBodyAccMag-mean() |
| tGravityAccMag-mean() |
| tBodyAccJerkMag-mean() |
| tBodyGyroMag-mean() |
| tBodyGyroJerkMag-mean() |
| fBodyAcc-mean()-X |
| fBodyAcc-mean()-Y |
| fBodyAcc-mean()-Z |
| fBodyAccJerk-mean()-X |
| fBodyAccJerk-mean()-Y |
| fBodyAccJerk-mean()-Z |
| fBodyGyro-mean()-X |
| fBodyGyro-mean()-Y |
| fBodyGyro-mean()-Z |
| fBodyAccMag-mean() |
| fBodyBodyAccJerkMag-mean() |
| fBodyBodyGyroMag-mean() |
| fBodyBodyGyroJerkMag-mean() |
| tBodyAcc-std()-X |
| tBodyAcc-std()-Y |
| tBodyAcc-std()-Z |
| tGravityAcc-std()-X |
| tGravityAcc-std()-Y |
| tGravityAcc-std()-Z |
| tBodyAccJerk-std()-X |
| tBodyAccJerk-std()-Y |
| tBodyAccJerk-std()-Z |
| tBodyGyro-std()-X |
| tBodyGyro-std()-Y |
| tBodyGyro-std()-Z |
| tBodyGyroJerk-std()-X |
| tBodyGyroJerk-std()-Y |
| tBodyGyroJerk-std()-Z |
| tBodyAccMag-std() |
| tGravityAccMag-std() |
| tBodyAccJerkMag-std() |
| tBodyGyroMag-std() |
| tBodyGyroJerkMag-std() |
| fBodyAcc-std()-X |
| fBodyAcc-std()-Y |
| fBodyAcc-std()-Z |
| fBodyAccJerk-std()-X |
| fBodyAccJerk-std()-Y |
| fBodyAccJerk-std()-Z |
| fBodyGyro-std()-X |
| fBodyGyro-std()-Y |
| fBodyGyro-std()-Z |
| fBodyAccMag-std() |
| fBodyBodyAccJerkMag-std() |
| fBodyBodyGyroMag-std() |
| fBodyBodyGyroJerkMag-std() |


## Transformations and work performed to clean up the data

STEPS:
* All source data files were loaded into data.frames
* Feature labels were extracted to form column headers
* The training and test X data sets were row binded
* Feature labes were added as column headers to the merged data set
* Columns representing mean and standard deviation were subsetted into a new data.frame
* The training and test Y data sets were row binded and an "Activity" header was added
* The mean/standard deviation and activity data sets were column binded into a new data.frame
* Each activity ID was replaced with a activity value
* 
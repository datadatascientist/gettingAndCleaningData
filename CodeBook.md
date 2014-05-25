## Code Book

### Tidy Mean

A data.table named `tidy.mean` is set with the following columns.  All units are maintained from the original data set. 
A file named tidy.mean.txt is written from run_analysis.R.

| column       | description                                              | type    |
| ------------ | -------------------------------------------------------- | ------- |
| Subject      | Identifier of the subject                                | integer |
| Activity     | Label of the activity                                    | factor  |
| MeanSamples  | Mean of variables by Subject + Activity provided in tidy | numeric |

### Tidy

A data.table named `tidy` is set with the following columns.  All units are maintained from the original data set. 

| Column                             | Original Name               |
| ----------------------------       | --------------------------- |
| Activity                           |                             |
| Subject                            |                             |
| Time.BodyAcc.Mean.X                | tBodyAcc-mean()-X           |
| Time.BodyAcc.Mean.Y                | tBodyAcc-mean()-Y           |
| Time.BodyAcc.Mean.Z                | tBodyAcc-mean()-Z           |
| Time.BodyAcc.Std.X                 | tBodyAcc-std()-X            |
| Time.BodyAcc.Std.Y                 | tBodyAcc-std()-Y            |
| Time.BodyAcc.Std.Z                 | tBodyAcc-std()-Z            |
| Time.GravityAcc.Mean.X             | tGravityAcc-mean()-X        |
| Time.GravityAcc.Mean.Y             | tGravityAcc-mean()-Y        |
| Time.GravityAcc.Mean.Z             | tGravityAcc-mean()-Z        |
| Time.GravityAcc.Std.X              | tGravityAcc-std()-X         |
| Time.GravityAcc.Std.Y              | tGravityAcc-std()-Y         |
| Time.GravityAcc.Std.Z              | tGravityAcc-std()-Z         |
| Time.BodyAccJerk.Mean.X            | tBodyAccJerk-mean()-X       |
| Time.BodyAccJerk.Mean.Y            | tBodyAccJerk-mean()-Y       |
| Time.BodyAccJerk.Mean.Z            | tBodyAccJerk-mean()-Z       |
| Time.BodyAccJerk.Std.X             | tBodyAccJerk-std()-X        |
| Time.BodyAccJerk.Std.Y             | tBodyAccJerk-std()-Y        |
| Time.BodyAccJerk.Std.Z             | tBodyAccJerk-std()-Z        |
| Time.BodyGyro.Mean.X               | tBodyGyro-mean()-X          |
| Time.BodyGyro.Mean.Y               | tBodyGyro-mean()-Y          |
| Time.BodyGyro.Mean.Z               | tBodyGyro-mean()-Z          |
| Time.BodyGyro.Std.X                | tBodyGyro-std()-X           |
| Time.BodyGyro.Std.Y                | tBodyGyro-std()-Y           |
| Time.BodyGyro.Std.Z                | tBodyGyro-std()-Z           |
| Time.BodyGyroJerk.Mean.X           | tBodyGyroJerk-mean()-X      |
| Time.BodyGyroJerk.Mean.Y           | tBodyGyroJerk-mean()-Y      |
| Time.BodyGyroJerk.Mean.Z           | tBodyGyroJerk-mean()-Z      |
| Time.BodyGyroJerk.Std.X            | tBodyGyroJerk-std()-X       |
| Time.BodyGyroJerk.Std.Y            | tBodyGyroJerk-std()-Y       |
| Time.BodyGyroJerk.Std.Z            | tBodyGyroJerk-std()-Z       |
| Time.BodyAccMag.Mean               | tBodyAccMag-mean()          |
| Time.BodyAccMag.Std                | tBodyAccMag-std()           |
| Time.GravityAccMag.Mean            | tGravityAccMag-mean()       |
| Time.GravityAccMag.Std             | tGravityAccMag-std()        |
| Time.BodyAccJerkMag.Mean           | tBodyAccJerkMag-mean()      |
| Time.BodyAccJerkMag.Std            | tBodyAccJerkMag-std()       |
| Time.BodyGyroMag.Mean              | tBodyGyroMag-mean()         |
| Time.BodyGyroMag.Std               | tBodyGyroMag-std()          |
| Time.BodyGyroJerkMag.Mean          | tBodyGyroJerkMag-mean()     |
| Time.BodyGyroJerkMag.Std           | tBodyGyroJerkMag-std()      |
| Frequency.BodyAcc.Mean.X           | fBodyAcc-mean()-X           |
| Frequency.BodyAcc.Mean.Y           | fBodyAcc-mean()-Y           |
| Frequency.BodyAcc.Mean.Z           | fBodyAcc-mean()-Z           |
| Frequency.BodyAcc.Std.X            | fBodyAcc-std()-X            |
| Frequency.BodyAcc.Std.Y            | fBodyAcc-std()-Y            |
| Frequency.BodyAcc.Std.Z            | fBodyAcc-std()-Z            |
| Frequency.BodyAccJerk.Mean.X       | fBodyAccJerk-mean()-X       |
| Frequency.BodyAccJerk.Mean.Y       | fBodyAccJerk-mean()-Y       |
| Frequency.BodyAccJerk.Mean.Z       | fBodyAccJerk-mean()-Z       |
| Frequency.BodyAccJerk.Std.X        | fBodyAccJerk-std()-X        |
| Frequency.BodyAccJerk.Std.Y        | fBodyAccJerk-std()-Y        |
| Frequency.BodyAccJerk.Std.Z        | fBodyAccJerk-std()-Z        |
| Frequency.BodyGyro.Mean.X          | fBodyGyro-mean()-X          |
| FrequencyT.BodyGyro.Mean.Y         | fBodyGyro-mean()-Y          |
| Frequency.BodyGyro.Mean.Z          | fBodyGyro-mean()-Z          |
| Frequency.BodyGyro.Std.X           | fBodyGyro-std()-X           |
| Frequency.BodyGyro.Std.Y           | fBodyGyro-std()-Y           |
| Frequency.BodyGyro.Std.Z           | fBodyGyro-std()-Z           |
| Frequency.BodyAccMag.Mean          | fBodyAccMag-mean()          |
| Frequency.BodyAccMag.Std           | fBodyAccMag-std()           |
| Frequency.BodyBodyAccJerkMag.Mean  | fBodyBodyAccJerkMag-mean()  |
| Frequency.BodyBodyAccJerkMag.Std   | fBodyBodyAccJerkMag-std()   |
| Frequency.BodyBodyGyroMag.Mean     | fBodyBodyGyroMag-mean()     |
| Frequency.BodyBodyGyroMag.Std      | fBodyBodyGyroMag-std()      |
| Frequency.BodyBodyGyroJerkMag.Mean | fBodyBodyGyroJerkMag-mean() |
| Frequency.BodyBodyGyroJerkMag.Std  | fBodyBodyGyroJerkMag-std()  |

### Notes

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

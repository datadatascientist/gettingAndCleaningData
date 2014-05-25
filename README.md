gettingAndCleaningData
======================

Source dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

 The R script called run_analysis.R does the following. 

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive activity names. 
    Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Notes

    Only column names containing mean() & std() were extracted.
    Requires the plyr & reshape2 packages.
    Assumes the dataset is unzipped in the working directory.

Constructed using the following

> version
               _                           
platform       x86_64-w64-mingw32          
arch           x86_64                      
os             mingw32                     
system         x86_64, mingw32             
status                                     
major          3                           
minor          0.2                         
year           2013                        
month          09                          
day            25                          
svn rev        63987                       
language       R                           
version.string R version 3.0.2 (2013-09-25)
nickname       Frisbee Sailing 


When run_analysis.R is executed it yields, tidy.mean.txt.

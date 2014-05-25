## Load the required libraries
library(plyr)
library(reshape2)

## Read the files pertaining to training and testing set
root.dir <- "UCI HAR Dataset"
data <- list()

message("loading activity_labels.txt that links the class labels with their activity names")
data$activity_names <- read.table(paste(root.dir, "activity_labels.txt", sep="/"), col.names=c("ActivityId", "Activity"), stringsAsFactors=FALSE)

message("loading features.txt, the list of all features")
data$features <- read.table(paste(root.dir, "features.txt", sep="/"), col.names=c("Id", "Features"))

message("loading training set")
data$train_subject <- read.table(paste(root.dir, "train", "subject_train.txt", sep="/"), col.names="Subject")
data$train_labels <- read.table(paste(root.dir, "train", "y_train.txt", sep="/"), col.names="ActivityId")
data$train_measurements <- read.table(paste(root.dir, "train", "X_train.txt", sep="/"))

message("loading testing set")
data$test_subject <- read.table(paste(root.dir, "test", "subject_test.txt", sep="/"), col.names="Subject")
data$test_labels <- read.table(paste(root.dir, "test", "y_test.txt", sep="/"), col.names="ActivityId")
data$test_measurements <- read.table(paste(root.dir, "test", "X_test.txt", sep="/"))

## Uses descriptive activity names to name the activities in the data set
message("Replacing the activity ids with the activity labels in training and testing sets")
data$train_activity_names <- merge(data$train_labels, data$activity_names)[,2]
data$test_activity_names <- merge(data$test_labels, data$activity_names)[,2]

## Replace the column names in training and testing sets with the feature names
message("Replacing the column names in training and testing sets with the feature names")
colnames(data$train_measurements) <- data$features$Features
colnames(data$test_measurements) <- data$features$Features

## Merge subject, activity name and measurements of train and test respectively
message("Merging subject, activity names and measurements of training and testing sets respectively")
data$train <- cbind(data$train_subject, data$train_activity_names, data$train_measurements)
colnames(data$train)[2] <- "Activity"
data$test <- cbind(data$test_subject, data$test_activity_names, data$test_measurements)
colnames(data$test)[2] <- "Activity"

## Merge the train and testing sets together
message("Merging the training and testing sets")
data$merged_data <- rbind(data$train, data$test)

## Extracts only the measurements on the mean and standard deviation for each measurement.
message("Only extract those columns that have either mean() or std() as part of their names")
mean_std_column_numbers <- grep("mean\\(|std\\(", colnames(data$merged_data))
tidy <- data$merged_data[, c(1, 2, mean_std_column_numbers)]

## Appropriately labels the data set with descriptive activity names. 
message("Renaming columns with mean() and std() to meaningful names")
rename.column <- function(column) {
  column <- gsub("tBody", "TimeBody", column)
  column <- gsub("tGravity", "TimeGravity", column)
  
  column <- gsub("fBody", "FrequencyBody", column)
  column <- gsub("fGravity", "FrequencyGravity", column)
  
  column <- gsub("\\-mean\\(\\)\\-", "Mean_", column)
  column <- gsub("\\-std\\(\\)\\-", "Std_", column)
  
  column <- gsub("\\-mean\\(\\)", "Mean", column)
  column <- gsub("\\-std\\(\\)", "Std", column)
  
  return(column)
}

last_column <- length(colnames(tidy))
colnames(tidy)[3:last_column] <- rename.column(colnames(tidy)[3:last_column])

## Creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject. 

tidy_final <- ddply(melt(tidy, id.vars=c("Subject", "Activity")), .(Subject, Activity), summarise, Mean=mean(value))


write.csv(tidy_final, file = "tidy.mean.txt",row.names = FALSE)
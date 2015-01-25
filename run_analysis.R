# Coursera: John Hopkins University
# Data Science Track Specialization
# Course: Getting and Cleaning Data
#
# Author: Thomas Skowronek
# Date: 01/25/2015
#
# Source data for the project:
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


# Load all the data files
features <- read.table("./features.txt", header = FALSE)
activity.labels <- read.table("./activity_labels.txt", header = FALSE, 
                              stringsAsFactors = FALSE)

test.subject <- read.table("./test/subject_test.txt", header = FALSE)
test.x <- read.table("./test/X_test.txt", header = FALSE)
test.y <- read.table("./test/y_test.txt", header = FALSE)

train.subject <- read.table("./train/subject_train.txt", header = FALSE)
train.x <- read.table("./train/X_train.txt", header = FALSE)
train.y <- read.table("./train/y_train.txt", header = FALSE)


#Extract the Feature labels
feature.labels <- as.character(features[,2])


# Merge the X training and test sets to create one data set
merged.data.x <- rbind(train.x, test.x)


# Apply feature labels to the merged X data set
colnames(merged.data.x) <- feature.labels


# Extract only the measurements on the mean and standard deviation for each 
# measurement from the merged X data set
mean.columns.x <- grep("mean()", colnames(merged.data.x), fixed=TRUE)
std.columns.x <- grep("std()", colnames(merged.data.x), fixed=TRUE)
mean.std.data.x <- merged.data.x[,c(mean.columns.x,std.columns.x)]


# Merge the y training and test sets to create one data set and apply a 
# descriptive label
merged.data.y <- rbind(train.y, test.y)
colnames(merged.data.y)[1] <- "Activity"


# Merge the columns from the merge.data.y and mean.std.data.x data sets to
# form a single data set
mean.std.activity <- cbind(merged.data.y, mean.std.data.x)


# Use descriptive activity names to name the activities in the data set
for (i in 1:length(mean.std.activity[,1])) {
    mean.std.activity[i,1] <- activity.labels[mean.std.activity[i,1],2]
}


# Merge the subject training and test sets to create one data set and apply a 
# descriptive label
merged.data.subject <- rbind(train.subject, test.subject)
colnames(merged.data.subject)[1] <- "Subject"


# Merge the columns from the merged.data.subject and mean.std.activity data sets 
# to form a final single data set
all.subject.activity <- cbind(merged.data.subject, mean.std.activity)


# Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject
tidy.data <- aggregate(all.subject.activity[, 3:ncol(all.subject.activity)], 
                       by=list(Subject = all.subject.activity$Subject, 
                               Activity = all.subject.activity$Activity), mean)

# Save the data to a Text file
write.table(tidy.data, file = "./tidy_data.txt", row.names = FALSE)

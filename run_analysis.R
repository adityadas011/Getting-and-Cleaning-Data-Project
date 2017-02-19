#LOAD LIBRARIES
library(dtplyr);
library(plyr);
library(tidyr);
library(data.table);

#SETTING WORKING DIRECTORY
setwd("/Users/adityadas/Downloads/Getting and Cleaning Data Project")

#READ DATA FILES
data_x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
data_y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

data_x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
data_y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

data_subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
data_subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

data_features <- read.table("./UCI HAR Dataset/features.txt")
data_activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

#MERGING TRAINING AND TEST DATA SETS
merged_x <- rbind(data_x_train, data_x_test)
merged_y <- rbind(data_y_train, data_y_test)
merged_subject <- rbind(data_subject_train, data_subject_test)

#EXTRACTING MEAN AND STANDARD DEVIATION
names(data_features) <- c('feature_id', 'feature_name')
features <- grep("-mean\\(\\)|-std\\(\\)", data_features$feature_name) 
merged_x <- merged_x[, features] 
names(merged_x) <- gsub("\\(|\\)", "", (data_features[features, 2]))

#NAMING ACTIVITIES
names(data_activity) <- c('activity_id', 'activity_name')
merged_y[, 1] = data_activity[merged_y[, 1], 2]

#COMBINE DATA (COLUMN WISE)
dataset <- cbind(merged_subject, merged_y, merged_x)

#NAMING COLUMNS OF TIDY DATA
names(dataset)[1] <- "Subject"
names(dataset)[2] <- "Activity"
names(dataset) <- gsub("^t", "Time", names(dataset))
names(dataset) <- gsub("^f", "Frequency", names(dataset))
names(dataset) <- gsub("Acc", "Accelerometer", names(dataset))
names(dataset) <- gsub("Gyro", "Gyroscope", names(dataset))
names(dataset) <- gsub("Mag", "Magnitude", names(dataset))
names(dataset) <- gsub("BodyBody", "Body", names(dataset))
names(dataset) <- gsub("std", "Standard-Deviation", names(dataset))
names(dataset) <- gsub("mean", "Mean", names(dataset))

#CREATING NEW DATA SET WITH AVERAGES
#tidydata <- aggregate(avg, list(dataset$Subject, dataset$Activity), mean)
extracted_data <- dataset[, grepl("Mean|Standard-Deviation|Subject|Activity", names(dataset))]
tidydata = ddply(extracted_data, c("Subject","Activity"), numcolwise(mean))

#CREATING TXT FILE
write.table(tidydata, file = "tidydata.txt")

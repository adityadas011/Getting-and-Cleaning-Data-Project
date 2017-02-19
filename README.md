# Getting and Cleaning Data Project

In this project, a R script is used that does the following:
- Loads all the libraries required (dtplyr, plyr, tidyr, data.table)
- Sets the working directory to the folder where the data is kept
- Reads the data files and store them to variables
- Merges the training and the test sets to create one data set
- Extracts the mean and standard deviation data for each measurement from the merged data set
- Names the different activities in the data set
- Labels the data set with descriptive variable names
- Creates a new data set with the average of each variable for each activity and each subject
- Writes a new file: "tidydata.txt"

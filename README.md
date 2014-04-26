Run-analysis
============

#####Peer Assessments / Getting and Cleaning Data Project

**GOAL**  
Provide tidy data from a public dataset that can be used for later analysis

**RAW DATA**  
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors  
Authors: Reyes-Ortiz, Anguita, Ghio, Oneto, SMARTLAB, DITEN  
Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#  
Data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**OUTPUT**  
**run_analysis.R**, a script in R that does the following:  
1. Merges the training and the test sets to create one data set  
2. Extracts only the measurements on the mean and standard deviation for each measurement  
3. Uses descriptive activity names to name the activities in the data set  
4. Appropriately labels the data set with descriptive activity names  
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
**dataMerged.txt**, a data set 10299*563 obtained merging the raw X\_train and X\_test which have been added to the fields "subject" and "activity".  
**dataTidy.txt**, a data set 180*68 with the average of each variable for each activity and each subject.

**HOW TO USE run_analysis.R**  
If you want to run the script run_analysis.R, you must have R installed with the packages *utils* and *reshape2* and do as follows:  
1. download and unzip the raw data (see link above)  
2. unzip the file in your work directory in R  
3. put the file run_analysis.R in your work directory  
4. load run_analysis.R - it will take a while due to the dimension of the raw data set  
5. get the follow tidy and reshaped data sets:  
* "_dataMerged_" (10299 rows * 563 cols), where test and train are merged in a single data frame
* "_dataRestricted_" (10299 rows * 68 cols), where dataMerged are restricted to the mean and standard deviation columns
* "_dataTidy_" (180 rows * 68 cols), with the average of each variable for each activity and each subject 

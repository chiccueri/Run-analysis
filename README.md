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
This repository provide the following files:  
* **run_analysis.R**, a script in R that does the following:  
 1. Merges the training and the test sets to create one data set  
 2. Extracts only the measurements on the mean and standard deviation for each measurement  
 3. Uses descriptive activity names to name the activities in the data set  
 4. Appropriately labels the data set with descriptive activity names  
 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
* **dataTidy.txt**, the tidy data set 180*68 created as described above.  
* **CodeBook.md** provides a detailed description of the variables, data, transformations and work performed to clean up the data.  

**HOW TO USE run_analysis.R**  
If you want to run the script run_analysis.R, you must have R installed with the packages *utils* and *reshape2* and do as follows:  
1. download and unzip the raw data (see link above)  
2. unzip the file in your work directory in R  
3. put the file run_analysis.R in your work directory  
4. load run_analysis.R - it will take a while due to the dimension of the raw data sets  
5. if you want to create a **dataTidy.txt** file with the tidy data set, run the function **dataTidy()**  
6. however in run_analysis.R you can get the follow data frames:  
* "_dataMerged_" (10299 rows * 563 cols), where test and training data sets are merged in a single data frame containing "subject" and "activity" fields as well  
* "_dataRestricted_" (10299 rows * 68 cols), where dataMerged are restricted to the mean and standard deviation columns
* "_dataTidy_" (180 rows * 68 cols), with the average of each variable for each of the 6 activities and each of the 30 subjects 

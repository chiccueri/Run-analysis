Code Book
============

#####Variables and data in dataTidy data set and transformations/work performed to clean up the raw data  


The file dataTidy.txt is a data set with 180 rows and 68 columns summarizing the raw data sets of training and test measurements and containing the average of each variable for each subject and each activity.  

The first column ("subjectID") contains the identifier of the subject who carried out the experiment
The second column ("activity")  contains the activity measured  
The other 66 columns contain mean and standard deviation values of the measurements

The 180 rows contain the average value for each of the 30 subjects and each of the 6 activities (so 30*6=180).
The average values were obtained after having merged training (7352 rows) and test (2947 rows) measurements in raw data. 
The process from raw to tidy data sets was the follow:   

1. downloaded and read raw data from the follow original files:  
   *features.txt* -> data.frame (561*2) with id and name of each feature measured  
   *activity_labels.txt* -> data.frame (6*2) with id and label of each activity
   *subject_train.txt* -> data.frame (7352*1) with the id of the subject for each of the 7352 measurements in training  
   *y_train.txt* -> data.frame (7352*1) with the id of the activity for each of the 7352 measurements in training  
   *X_train.txt* -> data.frame (7352*561) with the variables (features), for each of the 7352 measurements in training  
   *subject_test.txt* -> data.frame (2947*1) with the id of the subject for each of the 7352 measurements in test  
   *y_test.txt* -> data.frame (2947*1) with the id of the activity for each of the 7352 measurements in test  
   *X_test.txt* -> data.frame (2947*561) with the variables (features), for each of the 7352 measurements in test   

2. renamed columns in *activity_labels*, *subject_train* and *subject_test* giving appropriate label to the fields  

3. renamed columns in *X_train* and *X_test* fetching the labels from *features.txt*  
 
4. factorized *y_train* and *y_test*, each by *activity_labels*  

5. created intermediate data frames *dftrain* as a cbind of *X_train* + subject and activity (both as tidied in point 2)  

6. created intermediate data frames *dftest* as a cbind of *X_test* + subject and activity (both as tidied in point 2)  

7. created **dataMerged**, a new data frame that combine the rows of *dftrain* and those of *dftest* (using rbind)  

8. extracted features regarding mean and standard deviation from *features*  

9. created *dataRestricted* data frame, a subset of *dataMerged* containing only the features as extracted above  

10. created **dataTidy** data frame as a result of melt and dcast of *dataRestricted*  

11. created **dataTidy()**, a function to write the dataTidy data set in a text file named **dataTidy.txt**  



The following are the column names of dataTidy:

 [1] "subjectID"                  
 [2] "activity"                   
 [3] "tBodyAcc-mean()-X"          
 [4] "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"          
 [6] "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"           
 [8] "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"       
[10] "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"       
[12] "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"        
[14] "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"      
[16] "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"      
[18] "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"       
[20] "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"         
[22] "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"         
[24] "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"          
[26] "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"     
[28] "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"     
[30] "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"      
[32] "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"         
[34] "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"      
[36] "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"     
[38] "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"        
[40] "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"    
[42] "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"          
[44] "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"          
[46] "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"           
[48] "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"      
[50] "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"      
[52] "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"       
[54] "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"         
[56] "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"         
[58] "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"          
[60] "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"         
[62] "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()" 
[64] "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"    
[66] "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()"  
[68] "fBodyBodyGyroJerkMag-std()" 


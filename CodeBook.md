Code Book
============

#####Variables and data in dataTidy data set and transformations/work performed to clean up the raw data  


The file dataTidy.txt is a data set with 180 rows and 68 columns summarizing the raw data sets of training and test measurements and containing the average of each variable for each subject and each activity.  

The first column ("subjectID") contains the identifier of the subject who carried out the experiment
The second column ("activity")  contains the activity measured
The other 66 columns contain mean and standard deviation values of the measurements

The 180 rows contain the average value for each of the 30 subjects and each of the 6 activities (so 30*6=180).
The average values were obtained after having merged training (7352 rows) and test (2947 rows) measurements in raw data. 
The process from raw to tidy data set was the follow:
1. download and read raw data from the follow files
   activity_labels.txt - data.frame (
   features.txt
   subject_train.txt
   y_train.txt
   X_train.txt

   







 [1] "subjectID"                  -> identifier of the subject who carried out the experiment
 [2] "activity"                   -> activity measured
 [3] "tBodyAcc-mean()-X"          -> body acceleration signal on X axis, mean value
 [4] "tBodyAcc-mean()-Y"          -> body acceleration signal on Y axis, mean value
 [5] "tBodyAcc-mean()-Z"          -> body acceleration signal on Z axis, mean value
 [6] "tBodyAcc-std()-X"           -> body acceleration signal on X axis, standard deviation value
 [7] "tBodyAcc-std()-Y"           -> body acceleration signal on Y axis, standard deviation value
 [8] "tBodyAcc-std()-Z"           -> body acceleration signal on Z axis, standard deviation value
 [9] "tGravityAcc-mean()-X"       -> gravity acceleration signal on X axis, mean value
[10] "tGravityAcc-mean()-Y"       -> gravity acceleration signal on Y axis, mean value
[11] "tGravityAcc-mean()-Z"       -> gravity acceleration signal on Z axis, mean value
[12] "tGravityAcc-std()-X"        -> gravity acceleration signal on X axis, standard deviation value
[13] "tGravityAcc-std()-Y"        -> gravity acceleration signal on Y axis, standard deviation value
[14] "tGravityAcc-std()-Z"        -> gravity acceleration signal on Z axis, standard deviation value
[15] "tBodyAccJerk-mean()-X"      -> gravity acceleration signal on X axis, mean value
[16] "tBodyAccJerk-mean()-Y"      -> gravity acceleration signal on X axis, mean value
[17] "tBodyAccJerk-mean()-Z"      -> gravity acceleration signal on X axis, mean value
[18] "tBodyAccJerk-std()-X"       -> gravity acceleration signal on Z axis, standard deviation value
[19] "tBodyAccJerk-std()-Y"       -> gravity acceleration signal on Z axis, standard deviation value
[20] "tBodyAccJerk-std()-Z"       -> gravity acceleration signal on Z axis, standard deviation value
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





The new tidy data set comes from the follow original raw data files:  
activity_labels.txt -> data.frame (6*2) with id and label of each activity (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)
features.txt        -> data.frame (561*2) with id and name of each feature measured  
subject_train.txt   -> data.frame (7352*1) with the id of the subject who carried out the experiment, for each of the 7352 measurements
y_train.txt         -> data.frame (7352*1) with the id of the activity for each of the 7352 measurements in training
X_train.txt         -> data.frame (7352*561) with the variables (features), for each of the 7352 measurements in training







COLUMNS
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation



**RAW DATA**

FILES
activity_labels.txt - cols=
features.txt

subject_train.txt
y_train.txt
X_train.txt






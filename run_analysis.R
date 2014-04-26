library(utils)
library(reshape2)

activity_labels<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
features<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
colnames(activity_labels)<-c("idActivity","labelActivity")

#create a new TRAINING data frame (7352*563) adding "subject" and "activity" labels to the existing X_train
strain<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
xtrain<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
colnames(strain)[1]<-"subjectID"
colnames(xtrain)<-features[,2]
colnames(ytrain)[1]<-"activityID"
activity<-factor(ytrain$activityID,levels=activity_labels$idActivity,labels=activity_labels$labelActivity)
dftrain<-cbind(strain,activity,xtrain)

#create a new TEST data frame (2947*563) adding "subject" and "activity" labels to the existing X_train
stest<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
xtest<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
colnames(stest)[1]<-"subjectID"
colnames(xtest)<-features[,2]
colnames(ytest)[1]<-"activityID"
activity<-factor(ytest$activityID,levels=activity_labels$idActivity,labels=activity_labels$labelActivity)
dftest<-cbind(stest,activity,xtest)	

#MERGE training+test data in a single new data set (10299*563)
dataMerged<-rbind(dftrain,dftest)
write_dataMerged<-function() write.table(dataMerged, file="dataMerged.txt")

#create a TIDY data set (180*68) with the average of each variable for each activity and each subject
featuresFilter<-c(".*mean\\(\\)", ".*std\\(\\)")
featuresRestricted <-grep(paste(featuresFilter, collapse="|"), features$V2, value=FALSE)
dataRestricted<-dataMerged[,c(1,2,2+featuresRestricted)]
dataMolten<-melt(dataRestricted, id = c(1,2))
dataTidy<-dcast(dataMolten, subjectID+activity~variable,mean)
write_dataTidy<-function() write.table(dataTidy, file="dataTidy.txt")



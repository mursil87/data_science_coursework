
#get data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","getdata-projectfiles-UCI HAR Dataset")
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

testdat <- read.table("UCI HAR Dataset/test/X_test.txt")
traindat <- read.table("UCI HAR Dataset/train/X_train.txt")

testlabel <- read.table("UCI HAR Dataset/test/y_test.txt")
testdat$activitynum <- testlabel$V1
trainlabel <- read.table("UCI HAR Dataset/train/y_train.txt")
traindat$activitynum <- trainlabel$V1

testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testdat$subject <- testsubject$V1
trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
traindat$subject <- trainsubject$V1

#merge training and test datasets
combdat <- rbind(testdat,traindat)      


#extract mean and std dev for each measurement
combmean <- sapply(combdat[,1:561],mean)
combsd <- sapply(combdat[,1:561],sd)


#activity names
activitylabel <- read.table("UCI HAR Dataset/activity_labels.txt")
combdat2 <- merge(combdat,activitylabel,by.x="activitynum",by.y="V1")
colnames(combdat2)[564] <- c("activitylabel")


#variable names
varnames <- read.table("UCI HAR Dataset/features.txt")
colnames(combdat2)[2:562] <- as.character(varnames$V2)


#dataset with average of each activity and subject
aggdat <- aggregate(combdat2, by=list(combdat2$subject,combdat2$activitylabel), FUN=mean)
final <- data.frame(aggdat$Group.1, aggdat$Group.2, aggdat[,4:564])
colnames(final)[1:2] <- c("subject","activity")

write.table(final,"final.txt")

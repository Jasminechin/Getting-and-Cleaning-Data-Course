dir1 <- "/Users/UCI HAR Dataset"
dir2 <- "/Users/UCI HAR Dataset/test"
dir3 <- "/Users/UCI HAR Dataset/train"

setwd(dir = dir1)
activity <- read.table("activity_labels.txt")
features <- read.table("features.txt")
# read activity labels and features in dir1

setwd(dir = dir2)
test_set <- read.table("X_test.txt")
test_labels <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
# read test data in dir2

setwd(dir = dir3)
train_set <- read.table("X_train.txt")
train_labels <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")
# read train data in dir3

newset <- rbind(test_set, train_set)
newlabels <- rbind(test_labels, train_labels)
newsubject <- rbind(test_subject, train_subject)

names(newset) <- features[, 2]
#subsititude V1, V2, ... with the feature names

newset <- newset[, c(which(grepl("mean|std", names(newset), ignore.case = TRUE)== TRUE))]
# extract columns of mean and std

newlabel <- merge(newlabels, activity, by.x = "V1", by.y = "V1")[2]
# subsititude lables, 1-6, with the names of activities

Dataset <- cbind(newsubject, newlabel, newset)
names(Dataset)[1:2] <- c("subject", "activity")
# combine newsubject, newlable and newset into a full dataset

Dataset <- group_by(Dataset, subject, activity)
Dataset <- summarise_each(Dataset, funs(mean))
# group data based on subjects and activities
# use the mean function to summarise the datase, so the outcome displayed on the .csv file and the .txt file is the mean

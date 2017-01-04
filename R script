dir1 <- "/Users/UCI HAR Dataset/test"
dir2 <- "/Users/UCI HAR Dataset/train"
dir3 <- "/Users/UCI HAR Dataset/test/Inertial Signals"
dir4 <- "/Users/UCI HAR Dataset/train/Inertial Signals"

setwd(dir = dir1)
test_set <- read.table("X_test.txt")
test_labels <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
setwd(dir = dir3)
body_acc_x_test <- read.table("body_acc_x_test.txt")
body_acc_y_test <- read.table("body_acc_y_test.txt")
body_acc_z_test <- read.table("body_acc_z_test.txt")
body_gyro_x_test <- read.table("body_gyro_x_test.txt")
body_gyro_y_test <- read.table("body_gyro_y_test.txt")
body_gyro_z_test <- read.table("body_gyro_z_test.txt")
total_acc_x_test <- read.table("total_acc_x_test.txt")
total_acc_y_test <- read.table("total_acc_y_test.txt")
total_acc_z_test <- read.table("total_acc_z_test.txt")
# read test data in dir1 and dir3

setwd(dir = dir2)
train_set <- read.table("X_train.txt")
train_labels <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")
setwd(dir = dir4)
body_acc_x_train <- read.table("body_acc_x_train.txt")
body_acc_y_train <- read.table("body_acc_y_train.txt")
body_acc_z_train <- read.table("body_acc_z_train.txt")
body_gyro_x_train <- read.table("body_gyro_x_train.txt")
body_gyro_y_train <- read.table("body_gyro_y_train.txt")
body_gyro_z_train <- read.table("body_gyro_z_train.txt")
total_acc_x_train <- read.table("total_acc_x_train.txt")
total_acc_y_train <- read.table("total_acc_y_train.txt")
total_acc_z_train <- read.table("total_acc_z_train.txt")
# read train data in dir2 and dir4

# first, I would like to process test data by merging them

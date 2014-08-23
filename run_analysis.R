setwd("C:/Users/Tycho/Documents/Coursera/Data Science Johns Hopkins/Getting and Cleaning Data/Course Project/UCI HAR Dataset")

# loading all the data files into the global environment
train_X_train <- read.table("./train/X_train.txt", sep="")
train_y_train <- read.table("./train/y_train.txt", sep="")
train_subject_train <- read.table("./train/subject_train.txt", sep="")
test_X_test <- read.table("./test/X_test.txt", sep="")
test_y_test <- read.table("./test/y_test.txt", sep="")
test_subject_test <- read.table("./test/subject_test.txt", sep="")
features <- read.table("./features.txt", sep="", stringsAsFactors=F)
activity_labels <- read.table("./activity_labels.txt", sep="", stringsAsFactors=F)

# Changing the activity label into lowercase and removing the "_"s
activity_labels[,2] <- sub("_", "", activity_labels[,2])
activity_labels[,2] <- tolower(activity_labels[,2])

# Assigning descriptive names to all the activities each prticipant performed
for (i in 1:6)  { train_y_train[train_y_train == i,] <- activity_labels[i,2] }
for (i in 1:6)  { test_y_test[test_y_test == i,] <- activity_labels[i,2] }

# Extracting only the data measuring mean and standard deviation
train_X_subset <- train_X_train[,grep("mean|std",features[,2])]
test_X_subset  <- test_X_test[,grep("mean|std",features[,2])]

# Combining the information about each subject and activity with actual data 
#obtained from the experiment
train_X <- cbind(train_y_train, train_subject_train, train_X_subset)
test_X <- cbind( test_y_test, test_subject_test, test_X_subset)

# Combining the train set data with the test set data
data <- rbind(train_X, test_X)

# Extracting the names of the variables containing mean and standard deviation
features_subset <- grep("mean|std",features[,2],value=T)
# Transforming the resulting names into lowercase
features_subset <- tolower(features_subset)
# Removing the "()"s 
features_subset <- sub("[/(][/)]","",features_subset)
# Removing the "-"
features_subset <- gsub("[-]|[,]","",features_subset)
# Moving prefixes "t" and "f" from the beginning to the end of the variables
features_subset <- paste0(substr(features_subset,2,nchar(features_subset)),substr(features_subset,1,1))
# Substituting the abbreviation "acc" into "acceleration"
features_subset <- sub("[a][c][c]","accelerometer",features_subset)
# substituting the abbreviation "gyro" into "gyroscope"
features_subset <- sub("[g][y][r][o]","gyroscope",features_subset)

# Changing the names of the resulting reduced dataset with the tidy names 
names(data)[3:ncol(data)] <- features_subset
# Changing the names of the added first 2 column for the activities and subjects
names(data)[1:2] <- c("activity","subject")

# Aggregating the data as taking the means of the seleted variables 
#for each activity and subject
tidydata <- aggregate(data[3:ncol(data)],by = list(data$activity, data$subject),FUN="mean")
names(tidydata)[1:2] <- c("activity","subject")

# Exporting a comma separated file as the end result, i.e. the tidy data
write.table(tidydata,file="./Course Project/tidydata.txt", sep=",",row.name=F)

# Exporting a "draft" code book, i.e. all variable names in text format
write.table(features_subset,file="./Course Project/CodeBook_draft.txt",quote= F, col.names=F,row.names=F)








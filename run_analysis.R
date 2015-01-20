#######The script does the following.

run_analysis <- function(data_dir) {
    #######################################################################
    # 1. Merges the training and the test sets to create one data set.
    # 4. Appropriately labels the data set with descriptive variable names.
    #######################################################################
    activity_labels <- read.table(paste(data_dir, "activity_labels.txt", sep=""))
    features <- read.table(paste(data_dir, "features.txt", sep=""))
    
    X_test <- read.table(paste(data_dir, "test/X_test.txt", sep=""))
    names(X_test) = features[,2]
    Y_test <- read.table(paste(data_dir, "test/Y_test.txt", sep=""))
    names(Y_test) <- "activity"
    subject_test <- read.table(paste(data_dir, "test/subject_test.txt", sep=""))
    names(subject_test) <- "subject"
    test <-cbind(subject_test, Y_test, X_test)
    
    X_train <- read.table(paste(data_dir, "train/X_train.txt", sep=""))
    names(X_train) = features[,2]
    Y_train <- read.table(paste(data_dir, "train/Y_train.txt", sep=""))
    names(Y_train) <- "activity"
    subject_train <- read.table(paste(data_dir, "train/subject_train.txt", sep=""))
    names(subject_train) <- "subject"
    train <-cbind(subject_train, Y_train, X_train)
    
    data <- rbind(test,train)

    ############################################################################################
    # 2. Extracts only the measurements on the mean and standard deviation for each measurement.
    ############################################################################################
    columns <- grepl("mean|std", names(data))
    data_subset <- data[,columns]
    
    data_subset <- cbind(data[1:2],data_subset)
    
    ###########################################################################
    # 3. Uses descriptive activity names to name the activities in the data set
    ###########################################################################
    data_subset[,2] <- activity_labels[,2][data_subset[,2]]
    tidydataset1 <- data_subset
    
    ######################################################################################
    # 5. From the data set in step 4, creates a second, independent tidy data set with the 
    # average of each variable for each activity and each subject.
    ######################################################################################
    ###controllare!!!!
    tidydataset2 <- aggregate(x=data_subset, by=list(subject=data_subset[,1],activity=data_subset[,2]), FUN="mean")
    tidydataset2 <- tidydataset2[,c(1,2,5:length(tidydataset2))]
    
    
    write.table(tidydataset2, "tidydata_step5.txt",row.name=FALSE)
}

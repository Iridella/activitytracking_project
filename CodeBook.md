# Code Book

Here you can find a description of variables, data, and any transformations or work that the script performe to clean up the data

## The script

The script run_analysis.R does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Variables

* X_test, Y_test, subject_test, X_train, Y_train, subject_train contain the data from the downloaded files.
* test and train merge the previous datasets to create one data set.
* data is the merge of training and test data sets.
* data_subset contain only the measurements on the mean and standard deviation for each measurement.
* tidydataset uses descriptive activity names to name the activities in the data_subset.
* tidydataset2 second, independent tidy data set with the average of each variable for each activity and each subject.

## Output

The output of the run_analysis.R script is a text file created with write.table() containing the second tidy data set ("tidydataset_average.txt")


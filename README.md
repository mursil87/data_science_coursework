#getting and cleaning data

1. Download the zip file from the URL provided. 
2. Unzip the file. 
3. Read and create clean data frames for testing and training data: testing/training data, testing/training activity numbers, and testing/training subject numbers.
4. Combine the testing and training data sets, which includes activity numbers and subject numbers. Combine uses the cbind() function. Dataset is called combdat. 
5. Calculate the mean and standard deviation of each variable, all columns except the activity number and subject number. 
6. Read activity names data. Merge into the combined dataset (combdat), call the new merged dataset combdat2. 
7. Read variable names for the 561 variables. Assign variable names to combdat2 columns. 
8. Aggregate and calculate mean for all columns of combdat2, grouping by subject and activity name. 

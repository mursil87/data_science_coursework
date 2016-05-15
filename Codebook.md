#Codebook of run_analysis.R
1. testdat - raw import of testing data variables (X_test.txt)
2. activitynum added as a column to testdat
3. subject added as a column to testdat
4. traindat - raw import of training data variables (X_train.txt)
5. activitynum added as a column to traindat
6. subject added as a column to traindat
7. testlabel - raw import of testing activity numbers (y_test.txt)
8. trainlabel - raw import of training activity numbers (y_train.txt)
9. testsubject - raw import of testing subject numbers (subject_test.txt)
10. trainsubject - raw import of training subject numbers (subject_train.txt)
11. combdat - data frame of combined testing and training datasets, include added columns
12. combmean - mean of all variables in combdat, excluding subject and activitynum
13. combsd - standard deviation of all variables in combdat, excluding subject and activitynum
14. activitylabel - raw import of activity labels (activity_labels.txt) that correspond to activity numbers
15. combdat2 - data frame with original combdat data, with the activity labels merged in
16. varnames - raw import of variables names (features.txt), used to give names to each variable column in combdat2
17. aggdat - akmost tidy dataset with mean of all variables, aggregated on unique combinations of subject and activity
18. final - final tidy dataset, taking aggdat and applying descriptive names to subject and activity columns

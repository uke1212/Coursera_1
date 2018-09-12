# This is the code book for tidy data set "tidy_data_set.txt"

# Data read from project data files.
TRAIN
X_train - train/X_train.txt
Activities_train - train/Y_train.txt
Sbj_train - train/subject_train.txt
TEST
X_TEST - train/X_train.txt
Activities_test - train/Y_train.txt
Sbj_test - train/subject_train.txt
FEATURES - ACTIVITY LABE
features - features.txt file
act_label - activity_labels.txt file
# Data create in a script 
Total is a result of merging test and train datasets together
total_mean is a final dataframe, contains average data, grouped by subject and activity (created with dplyr package)

# Variable
mean_std identify from features variable with mean or std in the name
var_name is the list of variable name without special character
activities contains 6 types of activity: WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING, STANDING,LAYING

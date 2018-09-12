# Getting and Cleaning Data - Course Project
This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, does the following:
1. Read dataframe:  Train and Test with Activities and Sbj 
2. Read Features and Activity label
3. Merge Training and Test dataframe ("total" dataframe)
4. Remove unnecessary dataframe for increase free memory
5. Identify Mean and std in features dataframe
6. Remove special character from var_name "()"
7. Select in dataframe "total" only variable identified in point 5
7. Creates a new dataframe (tidy) with the average value for each variable for each subject and activity.
 The end result is shown in the file `tidy_data_set.txt`.

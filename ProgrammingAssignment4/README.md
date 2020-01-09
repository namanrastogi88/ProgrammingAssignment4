The run_analysis.R script is used to execute all questions of the Week 4 Assignment. The steps followed are the following:

All Individual data points for body acceleration, body angular velocity and total acceleration is read into different variables. Each of them are converted into their respective tidy data sets using the pivot_longer variable.
Subject ids are also added to the corresponding non-tidy data sets before converting the same into tidy data set
Activity names are added as a different column into the data set corresponding to each variable. The resultant matrix is converted into a data frame for easy calculations.
The above step is performed individually for test and training data set.
Activity labels are added corresponding to each activity ID
The training and test data sets are then combined together to produce full data set.
tapply function is used to apply the mean function to all the data sets for a combination of activity text, subject combination.
The pivot_longer function is used again to convert the resultant data set into a tidy data set.
The resultant file is then written into the file avg_full.txt to get the resultant table which is the mean of all the variables for each combination of activity and subject
© 2020 GitHub, Inc.

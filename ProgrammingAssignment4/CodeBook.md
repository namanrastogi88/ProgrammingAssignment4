CodeBook
This code book summarizes the data and variables that are generate upon the execution of the script. This is the output of the Week 4 project in the Getting & Cleaning Data course while providing information on the Data Set and Attributes used from the original study. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For each record in the dataset it is provided:

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. Triaxial Angular velocity from the gyroscope. A 561-feature vector with time and frequency domain variables. Its activity label. An identifier of the subject who carried out the experiment.

activity_labels
A dataframe with two columns. The first one is an integer, the second is a string corresponding to the integer (factor level).

full_data
A combination of the two raw datasets (training and testing) with all variables. The columns (variables) have been renamed according to the context. Units are the same as in raw files (no data manipulation).

test_data / train_data
Two separate dataframes that contain the respective raw data with all data. he columns (variables) have been renamed according to the context. Units are the same as in raw files (no data manipulation).

subject_list_test/subject_list_train
List of subjects for test data and training data

test_body_acc_x,y,z/test_total_acc_x,y,z/test_body_gyro_x,y,z/train_body_acc_x,y,z/train_total_acc_x,y,z/train_body_gyro_x,y,z
Intermediate variable containing all the variables and their results in non - tidy format

test_body_acc_x_tidy,y,z/test_total_acc_x_tidy,y,z/test_body_gyro_x_tidy,y,z/train_body_acc_x_tidy,y,z/train_total_acc_x_tidy,y,z/train_body_gyro_x_tidy,y,z
Intermediate variable containing all the variables and their results in tidy format

avg_full_data
A data frame which contains the resultant mean of each varialble for each activity and subject combination

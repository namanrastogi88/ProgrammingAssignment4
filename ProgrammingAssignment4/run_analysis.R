library(tidyr)

#Getting activity labels for test data set
activity_labels <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\activity_labels.txt",
                              header=FALSE)
colnames(activity_labels) <- c("Activity","Activity Text")

#Getting Activity List for test data set
activity_list_test <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt",
                                header=FALSE)

#Getting subject list for test data set
subject_list_test <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt",
                                header=FALSE)

#Reading body acceleration x data for test data set
test_body_acc_x <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_x_test.txt",
                              header=FALSE)

test_body_acc_x <- cbind(test_body_acc_x,activity=activity_list_test[,1])
test_body_acc_x <- cbind(test_body_acc_x,subject=subject_list_test[,1])

test_body_acc_x <- merge(test_body_acc_x,activity_labels,
                         by.x="activity",
                         by.y="Activity")

#Converting into tidy data set
test_body_acc_x_tidy <- pivot_longer(test_body_acc_x, cols=starts_with("V"),
                                     names_to ="ColumnNames",values_to = "Reading")

#Reading body acceleration y data for test data set
test_body_acc_y <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_y_test.txt",
                              header=FALSE)

test_body_acc_y <- cbind(test_body_acc_y,activity=activity_list_test[,1])
test_body_acc_y <- cbind(test_body_acc_y,subject=subject_list_test[,1])

test_body_acc_y <- merge(test_body_acc_y,activity_labels,
                         by.x="activity",
                         by.y="Activity")

#Converting into tidy data set
test_body_acc_y_tidy <- pivot_longer(test_body_acc_y, cols=starts_with("V"),
                                     names_to ="ColumnNames",values_to = "Reading")


#Reading body acceleration z data for test data set
test_body_acc_z <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_z_test.txt",
                              header=FALSE)

test_body_acc_z <- cbind(test_body_acc_z,activity=activity_list_test[,1])
test_body_acc_z <- cbind(test_body_acc_z,subject=subject_list_test[,1])

test_body_acc_z <- merge(test_body_acc_z,activity_labels,
                         by.x="activity",
                         by.y="Activity")

#Converting into tidy data set
test_body_acc_z_tidy <- pivot_longer(test_body_acc_z, cols=starts_with("V"),
                                     names_to ="ColumnNames",values_to = "Reading")


#Reading body angular velocity x data for test data set
test_body_gyro_x <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_x_test.txt",
                               header=FALSE)

test_body_gyro_x <- cbind(test_body_gyro_x,activity=activity_list_test[,1])
test_body_gyro_x <- cbind(test_body_gyro_x,subject=subject_list_test[,1])

test_body_gyro_x <- merge(test_body_gyro_x,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
test_body_gyro_x_tidy <- pivot_longer(test_body_gyro_x, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")

#Reading body angular velocity y data for test data set
test_body_gyro_y <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_y_test.txt",
                               header=FALSE)

test_body_gyro_y <- cbind(test_body_gyro_y,activity=activity_list_test[,1])
test_body_gyro_y <- cbind(test_body_gyro_y,subject=subject_list_test[,1])

test_body_gyro_y <- merge(test_body_gyro_y,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
test_body_gyro_y_tidy <- pivot_longer(test_body_gyro_y, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")


#Reading body angular velocity z data for test data set
test_body_gyro_z <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_z_test.txt",
                               header=FALSE)

test_body_gyro_z <- cbind(test_body_gyro_z,activity=activity_list_test[,1])
test_body_gyro_z <- cbind(test_body_gyro_z,subject=subject_list_test[,1])

test_body_gyro_z <- merge(test_body_gyro_z,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
test_body_gyro_z_tidy <- pivot_longer(test_body_gyro_z, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")


#Reading total acceleration x data for test data set
test_total_acc_x <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_x_test.txt",
                               header=FALSE)

test_total_acc_x <- cbind(test_total_acc_x,activity=activity_list_test[,1])
test_total_acc_x <- cbind(test_total_acc_x,subject=subject_list_test[,1])

test_total_acc_x <- merge(test_total_acc_x,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
test_total_acc_x_tidy <- pivot_longer(test_total_acc_x, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")

#Reading total acceleration y data for test data set
test_total_acc_y <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_y_test.txt",
                               header=FALSE)

test_total_acc_y <- cbind(test_total_acc_y,activity=activity_list_test[,1])
test_total_acc_y <- cbind(test_total_acc_y,subject=subject_list_test[,1])

test_total_acc_y <- merge(test_total_acc_y,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
test_total_acc_y_tidy <- pivot_longer(test_total_acc_y, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")


#Reading total acceleration z data for test data set
test_total_acc_z <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_z_test.txt",
                               header=FALSE)

test_total_acc_z <- cbind(test_total_acc_z,activity=activity_list_test[,1])
test_total_acc_z <- cbind(test_total_acc_z,subject=subject_list_test[,1])

test_total_acc_z <- merge(test_total_acc_z,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
test_total_acc_z_tidy <- pivot_longer(test_total_acc_z, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")


test_data <- as.data.frame(cbind.data.frame(test_body_acc_x_tidy$Reading,
      test_body_acc_y_tidy$Reading,
      test_body_acc_z_tidy$Reading,
      test_body_gyro_x_tidy$Reading,
      test_body_gyro_y_tidy$Reading,
      test_body_gyro_z_tidy$Reading,
      test_total_acc_x_tidy$Reading,
      test_total_acc_y_tidy$Reading,
      test_total_acc_z_tidy$Reading,
      test_total_acc_x_tidy$`Activity Text`,
      test_total_acc_x_tidy$subject))

colnames(test_data) <- c("body_acc_x",
                         "body_acc_y",
                         "body_acc_z",
                         "body_gyro_x",
                         "body_gyro_y",
                         "body_gyro_z",
                         "total_acc_x",
                         "total_acc_y",
                         "total_acc_z",
                         "Activity Text",
                         "Subject")

#Getting Activity List for train data set
activity_list_train <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt",
                                  header=FALSE)

#Getting subject list for train data set
subject_list_train <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt",
                                 header=FALSE)

#Reading body acceleration x data for train data set
train_body_acc_x <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_x_train.txt",
                               header=FALSE)

train_body_acc_x <- cbind(train_body_acc_x,activity=activity_list_train[,1])
train_body_acc_x <- cbind(train_body_acc_x,subject=subject_list_train[,1])

train_body_acc_x <- merge(train_body_acc_x,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
train_body_acc_x_tidy <- pivot_longer(train_body_acc_x, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")

#Reading body acceleration y data for train data set
train_body_acc_y <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_y_train.txt",
                               header=FALSE)

train_body_acc_y <- cbind(train_body_acc_y,activity=activity_list_train[,1])
train_body_acc_y <- cbind(train_body_acc_y,subject=subject_list_train[,1])

train_body_acc_y <- merge(train_body_acc_y,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
train_body_acc_y_tidy <- pivot_longer(train_body_acc_y, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")


#Reading body acceleration z data for train data set
train_body_acc_z <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_z_train.txt",
                               header=FALSE)

train_body_acc_z <- cbind(train_body_acc_z,activity=activity_list_train[,1])
train_body_acc_z <- cbind(train_body_acc_z,subject=subject_list_train[,1])

train_body_acc_z <- merge(train_body_acc_z,activity_labels,
                          by.x="activity",
                          by.y="Activity")

#Converting into tidy data set
train_body_acc_z_tidy <- pivot_longer(train_body_acc_z, cols=starts_with("V"),
                                      names_to ="ColumnNames",values_to = "Reading")


#Reading body angular velocity x data for train data set
train_body_gyro_x <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_x_train.txt",
                                header=FALSE)

train_body_gyro_x <- cbind(train_body_gyro_x,activity=activity_list_train[,1])
train_body_gyro_x <- cbind(train_body_gyro_x,subject=subject_list_train[,1])

train_body_gyro_x <- merge(train_body_gyro_x,activity_labels,
                           by.x="activity",
                           by.y="Activity")

#Converting into tidy data set
train_body_gyro_x_tidy <- pivot_longer(train_body_gyro_x, cols=starts_with("V"),
                                       names_to ="ColumnNames",values_to = "Reading")

#Reading body angular velocity y data for train data set
train_body_gyro_y <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_y_train.txt",
                                header=FALSE)

train_body_gyro_y <- cbind(train_body_gyro_y,activity=activity_list_train[,1])
train_body_gyro_y <- cbind(train_body_gyro_y,subject=subject_list_train[,1])

train_body_gyro_y <- merge(train_body_gyro_y,activity_labels,
                           by.x="activity",
                           by.y="Activity")

#Converting into tidy data set
train_body_gyro_y_tidy <- pivot_longer(train_body_gyro_y, cols=starts_with("V"),
                                       names_to ="ColumnNames",values_to = "Reading")


#Reading body angular velocity z data for train data set
train_body_gyro_z <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_z_train.txt",
                                header=FALSE)

train_body_gyro_z <- cbind(train_body_gyro_z,activity=activity_list_train[,1])
train_body_gyro_z <- cbind(train_body_gyro_z,subject=subject_list_train[,1])

train_body_gyro_z <- merge(train_body_gyro_z,activity_labels,
                           by.x="activity",
                           by.y="Activity")

#Converting into tidy data set
train_body_gyro_z_tidy <- pivot_longer(train_body_gyro_z, cols=starts_with("V"),
                                       names_to ="ColumnNames",values_to = "Reading")


#Reading total acceleration x data for train data set
train_total_acc_x <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_x_train.txt",
                                header=FALSE)

train_total_acc_x <- cbind(train_total_acc_x,activity=activity_list_train[,1])
train_total_acc_x <- cbind(train_total_acc_x,subject=subject_list_train[,1])

train_total_acc_x <- merge(train_total_acc_x,activity_labels,
                           by.x="activity",
                           by.y="Activity")

#Converting into tidy data set
train_total_acc_x_tidy <- pivot_longer(train_total_acc_x, cols=starts_with("V"),
                                       names_to ="ColumnNames",values_to = "Reading")

#Reading total acceleration y data for train data set
train_total_acc_y <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_y_train.txt",
                                header=FALSE)

train_total_acc_y <- cbind(train_total_acc_y,activity=activity_list_train[,1])
train_total_acc_y <- cbind(train_total_acc_y,subject=subject_list_train[,1])

train_total_acc_y <- merge(train_total_acc_y,activity_labels,
                           by.x="activity",
                           by.y="Activity")

#Converting into tidy data set
train_total_acc_y_tidy <- pivot_longer(train_total_acc_y, cols=starts_with("V"),
                                       names_to ="ColumnNames",values_to = "Reading")


#Reading total acceleration z data for train data set
train_total_acc_z <- read.table(".\\Samsung Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_z_train.txt",
                                header=FALSE)

train_total_acc_z <- cbind(train_total_acc_z,activity=activity_list_train[,1])
train_total_acc_z <- cbind(train_total_acc_z,subject=subject_list_train[,1])

train_total_acc_z <- merge(train_total_acc_z,activity_labels,
                           by.x="activity",
                           by.y="Activity")

#Converting into tidy data set
train_total_acc_z_tidy <- pivot_longer(train_total_acc_z, cols=starts_with("V"),
                                       names_to ="ColumnNames",values_to = "Reading")


train_data <- as.data.frame(cbind.data.frame(train_body_acc_x_tidy$Reading,
                                  train_body_acc_y_tidy$Reading,
                                  train_body_acc_z_tidy$Reading,
                                  train_body_gyro_x_tidy$Reading,
                                  train_body_gyro_y_tidy$Reading,
                                  train_body_gyro_z_tidy$Reading,
                                  train_total_acc_x_tidy$Reading,
                                  train_total_acc_y_tidy$Reading,
                                  train_total_acc_z_tidy$Reading,
                                  train_total_acc_x_tidy$`Activity Text`,
                                  train_total_acc_x_tidy$subject))

colnames(train_data) <- c("body_acc_x",
                          "body_acc_y",
                          "body_acc_z",
                          "body_gyro_x",
                          "body_gyro_y",
                          "body_gyro_z",
                          "total_acc_x",
                          "total_acc_y",
                          "total_acc_z",
                          "Activity Text",
                          "Subject")
full_data <- rbind.data.frame(test_data, train_data)


avg_body_acc_x <- as.data.frame(tapply(full_data$body_acc_x, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_body_acc_y <- as.data.frame(tapply(full_data$body_acc_y, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_body_acc_z <- as.data.frame(tapply(full_data$body_acc_z, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_body_gyro_x <- as.data.frame(tapply(full_data$body_gyro_x, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_body_gyro_y <- as.data.frame(tapply(full_data$body_gyro_y, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_body_gyro_z <- as.data.frame(tapply(full_data$body_gyro_z, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_total_acc_x <- as.data.frame(tapply(full_data$total_acc_x, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_total_acc_y <- as.data.frame(tapply(full_data$total_acc_y, list(full_data$`Activity Text`,full_data$Subject), mean))
avg_total_acc_z <- as.data.frame(tapply(full_data$total_acc_z, list(full_data$`Activity Text`,full_data$Subject), mean))

avg_body_acc_x <- cbind(avg_body_acc_x,Activity=rownames(avg_body_acc_x))
avg_body_acc_y <- cbind(avg_body_acc_y,Activity=rownames(avg_body_acc_y))
avg_body_acc_z <- cbind(avg_body_acc_z,Activity=rownames(avg_body_acc_z))
avg_body_gyro_x <- cbind(avg_body_gyro_x,Activity=rownames(avg_body_gyro_x))
avg_body_gyro_y <- cbind(avg_body_gyro_y,Activity=rownames(avg_body_gyro_y))
avg_body_gyro_z <- cbind(avg_body_gyro_z,Activity=rownames(avg_body_gyro_z))
avg_total_acc_x <- cbind(avg_total_acc_x,Activity=rownames(avg_total_acc_x))
avg_total_acc_y <- cbind(avg_total_acc_y,Activity=rownames(avg_total_acc_y))
avg_total_acc_z <- cbind(avg_total_acc_z,Activity=rownames(avg_total_acc_z))


avg_body_acc_x_tidy <- pivot_longer(avg_body_acc_x, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_body_acc_y_tidy <- pivot_longer(avg_body_acc_y, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_body_acc_z_tidy <- pivot_longer(avg_body_acc_z, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_body_gyro_x_tidy <- pivot_longer(avg_body_gyro_x, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_body_gyro_y_tidy <- pivot_longer(avg_body_gyro_y, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_body_gyro_z_tidy <- pivot_longer(avg_body_gyro_z, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_total_acc_x_tidy <- pivot_longer(avg_total_acc_x, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_total_acc_y_tidy <- pivot_longer(avg_total_acc_y, cols=1:30 ,names_to ="Subject",values_to = "Reading")
avg_total_acc_z_tidy <- pivot_longer(avg_total_acc_z, cols=1:30 ,names_to ="Subject",values_to = "Reading")

avg_full_data <- cbind.data.frame(avg_body_acc_x_tidy$Reading,
                       avg_body_acc_y_tidy$Reading,
                       avg_body_acc_z_tidy$Reading,
                       avg_body_gyro_x_tidy$Reading,
                       avg_body_gyro_y_tidy$Reading,
                       avg_body_gyro_z_tidy$Reading,
                       avg_total_acc_x_tidy$Reading,
                       avg_total_acc_y_tidy$Reading,
                       avg_total_acc_z_tidy$Reading,
                       avg_total_acc_x_tidy$Activity,
                       avg_total_acc_x_tidy$Subject)

colnames(avg_full_data) <- c("avg_body_acc_x",
                              "avg_body_acc_y",
                              "avg_body_acc_z",
                              "avg_body_gyro_x",
                              "avg_body_gyro_y",
                              "avg_body_gyro_z",
                              "avg_total_acc_x",
                              "avg_total_acc_y",
                              "avg_total_acc_z",
                              "Activity",
                              "Subject")


write.table(avg_full_data,file="avg_full.txt",row.names = FALSE)


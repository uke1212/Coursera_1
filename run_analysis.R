setwd("D:\\CORSO_DATA_SCIENCES\\3_MODULO\\week_4\\PROGETTO\\data\\UCI HAR Dataset")

#read TRAIN files
      X_train <- read.table("train/X_train.txt")
      Activities_train <- read.table("train/Y_train.txt")
      Sbj_train <- read.table("train/subject_train.txt")

#read TEST files
      X_test <- read.table("test/X_test.txt")
      Activities_test <- read.table("test/Y_test.txt")
      Sbj_test <- read.table("test/subject_test.txt")
      
#read FEATURES, ACTIVITY LABEL
      features <- read.table("features.txt",as.is=T) #don't convert character in factor
      act_label <- read.table("activity_labels.txt")
      colnames(act_label) <- c("act_id","act_name")

# merge training and test
      train <- cbind(X_train,Activities_train,Sbj_train)
      test <- cbind(X_test,Activities_test,Sbj_test)
      total <- rbind(train,test)
      View(total[1:100,])
      rm(train,test,X_train,X_test,Activities_test,Activities_train,Sbj_test,Sbj_train)

#select only mean and std in total
      mean_std <-  grep(".*mean.*|.*std.*", features[,2])
      var_name <- features[mean_std,2]
      var_name <- gsub("[\\(\\)]","",var_name)
      total <- total[,c(mean_std,562,563)]
      colnames(total) <- c(var_name, "Activity", "Subject")
      table(total$Activity)
      total$Activity <- factor(total$Activity
                               ,levels =c(1,2,3,4,5,6)
                               ,labels = act_label[,2] )
      View(total[1:100,])
      colnames(total)
      
#new dataframe with mean for each variable/activity and subject
      library(dplyr)
      total_mean <- total%>%
                        group_by (Activity,Subject) %>%
                        summarise_all(funs(mean))

      
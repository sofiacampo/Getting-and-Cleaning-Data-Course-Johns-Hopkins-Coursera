#1. Identification
#File Name: run_analysis.R
#Creator: Sofia Campo
#Course: Getting and Cleaning Data Week4 Project, Jonhs Hopkins Data Science Specialization
#Date: February 2019


#2. Install Packages "dplyr" & "data.table"
install.packages("dplyr")
install.packages("data.table")

#3. Load Packages "dplyr" & "data.table"
library(data.table)
library(dplyr)

#4. Set Working Directory
setwd("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset")


#5. Read Train & Test Data, Labels and Names

#5.1 Read Train Data

X_train <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/train/subject_train.txt")

#5.2 Read Test Data
X_test <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/test/subject_test.txt")

#5.3 Read Names
variable_names <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/features.txt")

#5.4 Read Labels
activity_labels <- read.table("C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/activity_labels.txt")

#6. Merge Training and Test Data
X_Merged <- rbind(X_train, X_test)
Y_Merged <- rbind(Y_train, Y_test)
Sub_Merged <- rbind(Sub_train, Sub_test)

#7. Extract Mean and SD
Mean_SD_var <- variable_names[grep("MEAN\\(\\)|SD\\(\\)",variable_names[,2]),]
X_Merged <- X_Merged[,Mean_SD_var[,1]]

#8. Name Dataset activities
colnames(Y_Merged) <- "activity"
Y_Merged$activitylabel <- factor(Y_Merged$activity, labels = as.character(activity_labels[,2]))
activitylabel <- Y_Merged[,-1]

#9. LabelDataset with descriptive variable names
colnames(X_Merged) <- variable_names[Mean_SD_var[,1],2]

#10. Create Tidy dataset with Average of each variable per activity and subject
colnames(Sub_Merged) <- "subject"
total <- cbind(X_Merged, activitylabel, Sub_Merged)
total_mean <- total %>% group_by(activitylabel, subject) %>% summarize_all(funs(mean))
write.table(total_mean, file = "C:/Users/sofiacampo/OneDrive/DOCUMENTS/EDUCACAO/2018_JONHS_HOPKINS/GETTING_AND_CLEANING_DATA/PROJECT/UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE) 



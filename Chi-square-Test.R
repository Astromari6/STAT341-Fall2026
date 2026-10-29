#Author: Omari Wood, Date: 10/27/26, Purpose: Test Chi-Square analyisis

#Read Sample Dataset
data_frame <-read.csv("https://goo.gl/j6lRXD")

New_data<-data_frame[,3:2] #New_data<-data_frame[,c(1:2)] #New_data<-data_frame[-c(50:55),

head(data_frame)

#Print the dataset in a table format
table(data_frame$treatment, data_frame$improvement)


#Apply the chi-0square function to calculate the differenc between treated and not beign treated
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

       Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841

> 
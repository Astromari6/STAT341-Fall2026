#Author: Omari Wood, Date: 10/27/26, Purpose: Test Chi-Square analyisis

#Read Sample Dataset
data_frame <-read.csv("https://goo.gl/j6lRXD")

New_data<-data_frame[,3:2] #New_data<-data_frame[,c(1:2)] #New_data<-data_frame[-c(50:55),

head(data_frame)

#Print the dataset in a table format
table(data_frame$treatment, data_frame$improvement)
##table(data_frame$Funding.source, data_frame$Decision)

#Apply the chi-0square function to calculate the differenc between treated and not beign treated
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

##chisq.test(data_frame$Funding.source, data_frame$Decision, correct=FALSE)

       Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841

#Using mtcars dataset, use chi-square to compare

#__HW__
#Using dataset "https://raw.githubusercontent.com/gramener/datasets/refs/heads/main/card_transactions.csv" use chi-square test to compare columns "
"Funding source" and "Decision" using chi-square test.

data_frame <-read.csv("https://raw.githubusercontent.com/gramener/datasets/refs/heads/main/card_transactions.csv")

#__HW__Result 

> table(data_frame$Funding.source, data_frame$Decision)
         
          Approved Declined
  Credit      4364      460
  Debit       4275      484
  Prepaid      366       51
> chisq.test(data_frame$Funding.source, data_frame$Decision, correct=FALSE)

        Pearson's Chi-squared test

data:  data_frame$Funding.source and data_frame$Decision
X-squared = 3.6017, df = 2, p-value = 0.1652

> 

> 
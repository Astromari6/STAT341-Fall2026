##Name: Omari Wood, Date: 09/08/2026, Purpose: Chi-Square Assignment

#//Dataset

data_frame <-read.csv("C:/Users/omari/Downloads/01-22-2022.csv")

Clean_data <- na.omit(data_frame)

#table(data_frame$Province_State, data_frame$Country_Region)

#head(data_frame)

chisq.test(data_frame$Province_State, data_frame$Country_Region, correct=FALSE)

#//Result 

        Pearson's Chi-squared test

data:  data_frame$Province_State and data_frame$Country_Region
X-squared = 93821, df = 119600, p-value = 1

Warning message:
In chisq.test(data_frame$Province_State, data_frame$Country_Region,  :
  Chi-squared approximation may be incorrect
#Name: Omari Wood, Date: 08/27/26, Purpose: Test the correlation analysis

#Install package ggpubr
if(!require(devtools)) install.packages("devtools");
devtools::install_github("kassambara/ggpubr")

#Load package ggpubr
library("ggpubr")

#Dummy dataset 
my_data <- mtcars

#Alternate Hypothesis: Tne weight of the car is inversely related to the miles per gallon it can travel.
#Null Hypothesis: There is no difference/no relation between the Weight of hte car and the miles per gallon it can travel.

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef
= TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000
lbs)")
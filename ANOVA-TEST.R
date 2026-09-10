##Name: Omari Wood, Date: 09/08/2026, Purpose: ANONVA analysis

#Load package ggplot2
library(ggplot2)

#Load the dataset

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH)

#Create a hypthosis. Alternative hypothesis. There is a significate difference between for survival with poison type 1 compared types 2 and 3. Null hypotheis; there is no more signifcant differene between the poison 1 and the other 2 poisons

#Plot the dataset using library ggplot2

?ggplot()

#Applying One way ANOVA function on dependent variable/time and independent variable/poison type.

anova_one_way <- aov(time~poison, data = df); summary(anova_one_way)


poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#POST HOC Test 

TukeyHSD(anova_one_way)


> 
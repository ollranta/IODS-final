# This script will consist of data wrangling to my final project
# Olli Rantanen, olli.a.rantanen@helsinki.fi, 2.3.2017 (start date)


# Data from <https://stat.ethz.ch/R-manual/R-devel/library/MASS/html/Boston.html>

#  Housing Values in Suburbs of Boston 
# So let's get down to business and import the file we are using for the project and install some packages 
install.packages(dplyr)
library(dplyr)
install.packages("ggplot2")
library("ggplot2")
install.packages("FactoMineR")
library("FactoMineR")
install.packages(MASS)
library(MASS)

# Accessing to Boston dataset is quite easy because it's built-in to MASS package. 
# The Boston dataset contains 506 observations and 14 columns, 

data("Boston")

dim(Boston)

# So we are focusing on crim variable, But first I want to change the column names since there is not much
# else to wrangle 

summary(Boston$crim)

#Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
# 0.00632  0.08204  0.25650  3.61400  3.67700 88.98000 



colnames(Boston)
colnames(Boston)[1] <- "crime"
colnames(Boston)[2] <- "zone"
colnames(Boston)[3] <- "industry"
colnames(Boston)[4] <- "charles"
colnames(Boston)[5]<- "noc" 
colnames(Boston)[6]<- "dwell_rooms"
colnames(Boston)[7]<- "built_b1940"
colnames(Boston)[8]<- "distance"
colnames(Boston)[9]<- "highways"
colnames(Boston)[10]<- "property_tax"
colnames(Boston)[11]<- "pupil-teacher"
colnames(Boston)[12]<- "blacks"
colnames(Boston)[13]<- "lower"
colnames(Boston)[14]<- "median"

colnames(Boston)

# Our dataset needs to be scaled if we might need it later. Our basic dataset has a scaled boston but it is in quantiles
# which we do not need at least now so I need to make my own. 
# I will however show how its done to avoid confusion. Scaling is done by function (Boston - mean(Boston))/ std(Boston).
# The data is in matrix class but the lower function will change this. 

my_boston_scaled <- scale(Boston)

my_boston_scaled <- as.data.frame(my_boston_scaled)
summary(my_boston_scaled)
summary(Boston)

# There does not seem to be more wrangling done for this data set so let's move on to the analysis.











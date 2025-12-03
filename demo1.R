## in R, 
## read file from a URL
## file is in **excel**
## create the object '**fragility23**' to hold the contents

###### the url
linkGit="https://github.com/DACSS-Fundamentals/overview/raw/refs/heads/main/FSI-2023-DOWNLOAD.xlsx"

###### the package that can read Excel from url
##? install.packages('rio')
library(rio)

##### object that will hold the result
fragility23=rio::import(linkGit)


## find out column names in fragility23
names(fragility23)

## Check the data types: 
## give me code to find out if numeric columns have been read as should
str(fragility23)

## give the statistical description of column (variable) "Total"
summary(fragility23$Total)

## get me the top ten countries on the column 'Total'
sorted_indices <- order(-fragility23$Total)
tail(fragility23[sorted_indices,'Country'],10)

## give me a plot for the 'Total' variable
hist(fragility23$Total,
     main = "Distribution of Total Score", 
     xlab = "Total Score", 
     ylab = "Frequency")
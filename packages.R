.libPaths() #to get the path
library() #to get the list of packages
#search()

install.packages("XML") #to install XML package
library(XML)
#library(tree)
#library(abind)

getwd()
setwd("F:/Documents/Problem_solving/SV/SV_R_Programming")
getwd()
data1 = read.csv("input1.csv") #First way
data1
data2 <- read.csv("F:/Documents/Problem_solving/SV/SV_R_Programming/input1.csv")
data2
#data <- read.csv("C:/Users/tanim/OneDrive/Documents/input1.csv") #Second Way
#print(data)




print(is.data.frame(data1))
print(ncol(data1))
print(nrow(data1))
getwd()


# Get the max salary from data frame.
sal <- max(data1$salary)
print(sal)


# Get the person detail having max salary.
retval <- subset(data1, salary == max(salary))
print(retval)

# Get all the people working in IT Department
retval <- subset( data1, dept == "IT")
print(retval)



#Get the persons in IT department whose
#salary is greater than 600
info <- subset(data1, salary > 600 & dept == "IT")
print(info)

#Get the people who joined on or after 2014
retval <- subset(data1, as.Date(start_date) >
                   as.Date("2014-01-01"))
print(retval)
#write into csv file
write.csv(retval,"output1.csv", row.names = FALSE)
getwd()
newdata <- read.csv("output1.csv")
print(newdata)
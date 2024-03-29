.libPaths() #to get the path 
library()   #to get the list of packages
#search()
install.packages("XML") #to install XML package
library(tree)
library(abind)
getwd()
setwd("C:/Users/tanim/AppData")
getwd()
data1 = read.csv("input1.csv") #First way
data1
data <- read.csv("C:/Users/tanim/OneDrive/Documents
                 /input1.csv") #Second Way
print(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
getwd()


# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)
# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)
# Get all the people working in IT Department
retval <- subset( data, dept == "IT")
print(retval)



#Get the persons in IT department whose 
#salary is greater than 600
info <- subset(data, salary > 600 & dept == "IT")
print(info)

#Get the people who joined on or after 2014
retval <- subset(data, as.Date(start_date) > 
                   as.Date("2014-01-01"))
print(retval)
#write into csv file
write.csv(retval,"output1.csv", row.names = FALSE)
getwd()
newdata <- read.csv("output1.csv")
print(newdata)

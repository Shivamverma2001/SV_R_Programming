# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23",
                         "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data)
str(emp.data)#structure
summary(emp.data)#statistical summary
summary(emp.data$salary)
print(emp.data$emp_id)
result=data.frame(emp.data$emp_id, emp.data$salary)
result
emp.data
result = emp.data[1:2,]#First two rows
result
emp.data
result = emp.data[1:2,4] #Fist 2 rows with 4th col
result
result = emp.data[2:4,2]
result
result = emp.data[c(2,4), c(1,3)]
result
emp.data
result = emp.data[c(1,5), c(2,4)]
result
# Add the "dept" coulmn.
emp.data$dept <- c("IT","Operations","IT","HR",
                   "Finance")
emp.data
str(emp.data)
# Create the first data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23",
                         "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  dept = c("IT","Operations","IT","HR","Finance")
)

# Create the second data frame
emp.newdata <- 	data.frame(
  emp_id = c (6:8), 
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8), 
  start_date = as.Date(c("2013-05-21","2013-07-30",
                         "2014-06-17")),
  dept = c("IT","Operations","Fianance")
)
# Bind the two data frames.
emp.finaldata <- rbind(emp.newdata,emp.data)
print(emp.finaldata)
a=c(1,2,3,4,5,6,7,8)
b=cbind(emp.finaldata,a)
b


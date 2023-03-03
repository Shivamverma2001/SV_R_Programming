#create the data frame
emp.data<-data.frame(
  emp_id=c(1:5),
  emp_name=c("rick","dan","michelle","ryan","gary"),
  salary=c(312.32,452.3,546.1,561.2,256.2),
  start_date=as.Date(c("2012-01-01","2013-09-03","2022-02-05","2013-09-03","2022-02-05")),
  stringsAsFactors = FALSE
)#emp.data is not a reference it's only name
#print the data frame
print(emp.data)
str(emp.data)#structure
summary(emp.data)#statistical summary
summary(emp.data$salary)
print(emp.data$emp_id)
result=data.frame(emp.data$emp_id,emp.data$salary)
result
emp.data
result=emp.data[1:2]#first two rows
result
result=emp.data[1:2,4]#first two rows with 4th column
result
result=emp.data[2:4,2]
result
result=emp.data[c(2,4),c(1,3)]
result
emp.data
result=emp.data[c(1,5),c(2,4)]
result
#Add new column debt
emp.data$debt<-c("IT","Operations","IT","HR","Finance")
emp.data
str(emp.data)
#create the first data frame
emp_data<-data.frame(
  emp_id=c(1:5),
  emp_name=c("rick","dan","michelle","ryan","gary"),
  salary=c(312.32,452.3,546.1,561.2,256.2),
  start_date=as.Date(c("2012-01-01","2013-09-03","2022-02-05","2013-09-03","2022-02-05")),
  debt=c("IT","Operations","IT","HR","Finance"),
  stringsAsFactors = FALSE
)
emp.newdata<-data.frame(
  emp_id=c(6:8),
  emp_name=c("rick","dan","michelle"),
  salary=c(312.32,452.3,546.1),
  start_date=as.Date(c("2012-01-01","2013-09-03","2022-02-05")),
  debt=c("IT","Operations","IT"),
  stringsAsFactors = FALSE
)
#bind the two data frames
emp.finaldata<-rbind(emp.newdata,emp.data)#row bind join two data frame row wise 
print(emp.finaldata)
a=c(1,2,3,4,5,6,7,8)
cbind(emp.finaldata,a)#column bind join two data frame column wise 

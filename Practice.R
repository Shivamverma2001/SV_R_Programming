n2=0
n1=as.integer(readline())
i=1
vec=c()
while(i<=n1){
  num=as.integer( readline())
  vec=c(vec,num)
  i=i+1
}
max=vec[1]
for(i in vec){
  if(max<i){
    max=i
  }
}
print(max)
emp.data<-data.frame(
  emp_id=c(1:5),
  emp_name=c("rick","dan","michelle","ryan","gary"),
  salary=c(312.32,452.3,546.1,561.2,256.2),
  start_date=as.Date(c("2012-01-01","2013-09-03","2022-02-05","2013-09-03","2022-02-05")),
  stringsAsFactors = TRUE
)
summary(emp.data)
v1=c(1,2,3,4)
v2=c(4,5,6,7)
v3=c(8,9,10,11)
v=c(v1,v2,v3)
m=matrix(v,nrow = 3,byrow = TRUE)
m

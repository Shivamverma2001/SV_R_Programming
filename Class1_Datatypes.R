#factor store homogeneous data type

subject_name=c("shivam","verma","himanshu")
no<-c(1,2,3,4)
subject_name
no

#factor

data<-c("East","West","North","South","East","West","North","South","East","West","North","South")
factor_data<-factor(data)
factor_data

#list

list_data<-list("Red","Black",c(1,2,3,4),TRUE,24.2)
list_data

#data frame

data_frame<-data.frame(
  name=c("Shivam","Verma","Shiva"),
  age=c(12,13,14),
  course=c("Hindi","English","Maths"),
  stringsAsFactors = FALSE
  )
data_frame

#matrix store homogenous data type and help doing mathematical 
c1<-c("r1","r2","r3")
c2<-c("c1","c2")
mat<-matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2,byrow = TRUE,dimnames = list(c1,c2))
mat

array
a1<-array(c(1,2,3,4,4,5,6,8),dim = c(3,3,2))
a1

print(1&3)


#miscelleneous operator
#: create series of number
# %int% check vector b is present in a  or not
#%*% for mutiply matrix with its transpose
a=23:32
a
a=c(25,27,87)
b=27
print(b %in%a)
M=matrix(c(1,2,3,4),2,2,TRUE)
print(M %*% t(M))

v<-c(2,5,3,9,8,11,6)
count=0
for(i in v){
  if(i%%2==0){
    count=count+1
      print(i)
  }
}
print(count)
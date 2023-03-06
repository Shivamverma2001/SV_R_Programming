list1=list("Hello","Hi",c(1,2,3),TRUE,12.34,51.23)
list1
#create a list containing a vector, a matrix and a list.
list_data<-list(c("Jan","Feb","Mar"),matrix(c(3,9,5,1,-2,8),nrow = 2),list("green",12.3))
list_data
#given names to the elements in the list.
names(list_data)<-c("1st Quarter","A Matrix","A inner list")
#show list
print(list_data)
#Access the first element of the list.
print(list_data[1])
print(list_data[[1]][2])
#Access the third element. As it is also a list, all its elements visible
print(list_data[3])
#Access the list element using the name of the  element.
print(list_data$`A Matrix`)
list_data
#Add element in the list
list_data[4]<-"New Element"
print(list_data[4])
print(list_data)
#Remove the last element
list_data[4]<-NULL
#Print 4th element
print(list_data[4])
list_data
#update the 3rd element
list_data[3]<-"updated element"
print(list_data)
print(list_data[3])
list_data[2]=NULL
list_data
list_data[1]="abc"
list_data
#create list
list1<-list(1:5)
print(list1)
list2<-list(10:14)
print(list2)
#result<-list1+list2
#convert the list into vectors
v1<-unlist(list1)
v1
v2<-unlist(list2)
v2
#add vector
result<-v1+v2
print(result)

#Factor
data<-c("east","west","east","north","north","east","west","west","west","east","north")
is.factor(data)
#Create the factors
factor_data<-factor(data)
nlevels(factor_data)
print(factor_data)
print(is.factor(factor_data))
#Apply the factor function with required order of the levels.
new_order_data<-factor(factor_data,levels=c("east","west","north"))
print(new_order_data)

#Create the vectors for data frame
height<-c(132,151,162,139,166,147,122,122)
weight<-c(48,49,66,53,67,52,40,40)
gender<-c("male","male","female","female","male","female","male","male")
#create the data frame
input_data<-data.frame(height,weight,gender,stringsAsFactors = FALSE)
print(input_data)
#Test if the gender column is a factor
print(is.factor(input_data$gender))
input_data<-data.frame(height,weight,gender,stringsAsFactors = TRUE)
print(is.factor(input_data$gender))
#print the gender column so see the levels
print(input_data$gender)
data<-c("east","west","east","north","north","east","west","west","west","east","north")
#create the factors
factor_data<-factor(data)
print(factor_data)
#gl=generate levels
v<-gl(3,3,labels=c("Tampa","Seattle","Boston"))
print(v)

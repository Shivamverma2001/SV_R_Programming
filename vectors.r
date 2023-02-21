# atomic vector , for numeric
a = 12
print (a)
# atomic vector , for integer
b = 12L
print (b)
# atomic vector , for logical
c = TRUE
print(c)
# atomic vector , for character
d = "HELLO"
print (d)
# atomic vector , for numeric
e = 2+4i
print(e)

x = 3.8 :8.9
print(x)

a = seq(4,7, length.out=6)
print(a)


b = seq(10,15, by = 0.5)
print(b)

a = c("Hll", "W", 1 , 'o')
print(a)
a = c(10,20,30,40,50)
print(a[2])
print(a[c(1:5)])
print(a[c(TRUE,FALSE,FALSE,TRUE,TRUE)])
print(a[c(-1,-3)])
print(a[c(2,3,5)])
a= NULL
print (a)

x <- 1:7
x

y <- 2 : -2
y
x = seq(0,10, by =2)
x
x[c(2,-4)]
x [c(2.9,3.54)]
x
x [c(5.2,6.87)]
x
v <- 3.8 :11.4
print(v)

#=================


a= 1:5
a
a[2]=20
a
a[a<3]= 100
a
a = a[1:4]
a
a = NULL
a[2]
x <- 1:7
x

y <- 2 : -2
y
x = seq(0,10, by =2)
x
x[c(2,-4)]
x [c(2.9,3.54)]
x
x [c(5.2,6.87)]
x
v <- 3.8 :11.4
print(v)

#=================


a= 1:5
a
a[2]=20
a
a[a<3]= 100
a
a = a[1:4]
a
a = NULL
a[2]

c=1:6
c
c[6]=NULL
C
C[1]=NULL
c=NULL
c



list1 = list("Hello","H1",c(1,2,3),TRUE,12.34,51.23)
list1

# Date 16/2/22 lec 2nd


#create a list containing a vector ,a matrix  and a list
list_data <- list(c("jan","Feb","Nov"), matrix(c(3,9,5,1,-2,8), nrow=2),list("green",12.3))
list_data 

# Gvie names to the elements in the list


# in order to give the names to the elements we use name function


names(list_data) <- c("1st Quarter","A matrix","A Inner list")

# Show the list
print(list_data)


# Access the first element of the list.

print(list_data[1])
print(list_data[[1]][2])


# Access the third element . As it is also a list, all its elements

print(list_data$`A matrix`) # if we want to access the element from name irrespective of its index no. we will use dollar($) sign
list_data

# Add element from the end

list_data[4] <- "New Element"
print(list_data[4])
print(list_data)

# Remove the last element
list_data[4] <-  NULL

# Print the 4th element

print(list_data[4])
list_data

#Update the 3rd element
list_data[3] <- "updated element"
print(list_data)
print(list_data[3])


list_data[2]=NULL
list_data
list_data[1] ="abc"
list_data


#Create lists
list1 <- list(1:5)
print(list1)

list2 <- list(10:14)
print(list2)

# result <- list1 +list2

#convert the lists into the vectors

# Note How to know that it is vector or list  from output--------- if the element is printing in square brackets then it is a list not a vector

v1 <- unlist(list1)
v1

v2 <- unlist(list2)
v2


#Now add the vectors
result <-  v1+v2
print(result)

#==================================================================================================

# Factors
# factors are used to categories the data

data <- c("East","West","East","North","North","East","West","West","West","East","North")
is.factor(data)

# Create the factors

factor_data <- factor(data)
nlevels(factor_data)
print(factor_data)
print(is.factor(factor_data))

# Apply the factor function with requires order of the level

new_order_data <- factor(factor_data, levels = c("East", "West","North"))
print(new_order_data)
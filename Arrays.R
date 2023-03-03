#create two vectors of different lengths
vector1<-c(5,8,3)
vecto2<-c(10,11,12,13,14,15)
column.names<-c("col1","col2","col3")
row.names<-c("row1","row2","row3")
matrix.names<-c("matirx1","matrix2")

#take these vectors as input to the array
result<-array(c(vector1,vecto2),dim=c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(result)
#accessing array elements
#print the third row of the second matix of the array
print(result[3,,2])
#print the element in the 1st row and 3rd column of first matrix
print(result[1,3,1])
#print the 2nd matrix
print(result[,,2])
#manipulating array elements
#create two vectors of different lengths
vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
#take these vectors as input to the array
array1<-array(c(vector1,vector2),dim=c(3,3,2))
print(array1)
#create two vectors of different lengths
vector3<-c(9,1,0)
vector4<-c(6,0,11,13,14,1,2,6,9)
array2<-array(c(vector3,vector4),dim=c(3,3,2))
print(array2)
#create matrices from these arrays
matrix1<-array1[,,2]
matrix2<-array2[,,2]
print(matrix1)
print(matrix2)
#add the matrices
result<-matrix1+matrix2
print(result)
#create two vectors of different lengths
vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
#Take these vectors as input to the array
new.array<-array(c(vector1,vecto2),dim=c(3,3,2))
print(new.array)
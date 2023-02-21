#create two vectors of different lengths
vector1<-c(5,8,3)
vecto2<-c(10,11,12,13,14,15)
column.names<-c("col1","col2","col3")
row.names<-c("row1","row2","row3")
matrix.names<-c("matirx1","matrix2")

#take these vectors as input to the array
result<-array(c(vector1,vecto2),dim=c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(result)
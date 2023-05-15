library(dplyr)
df1 = data.frame(ID = c(1, 2, 3, 4, 5),
                 w = c('a', 'b', 'c', 'd', 'e'),
                 x = c(1, 1, 0, 0, 1),
                 y=rnorm(5),
                 z=letters[1:5])
df1
df2 = data.frame(ID = c(1, 7, 3, 6, 8),
                 a = c('z', 'b', 'k', 'd', 'l'),
                 b = c(1, 2, 3, 0, 4),
                 c =rnorm(5),
                 d =letters[2:6])
df2
df3 = inner_join(df1, df2, by = "ID")# inner join
#inner join: common in both the tables
df3

left_join(df1, df2, by = "ID")
#left join: all from left table but only common from right table

#intersect: 
x <- c(1:4) #1 2 3 4
y <- c(2:7) #2 3 4 5 6 7
intersect(x,y)
df1 = data.frame(CustomerId = c(1:6),
                 Product = c(rep("Oven", 3),
                             rep("Television", 3)))
df2 = data.frame(CustomerId = c(4:7),
                 Product = c(rep("Television", 2), 
                             rep("Air conditioner", 2)))
df1
df2
intersect(df1,df2)

x=data.frame(ID = 1:6, ID1= 1:6)
y=data.frame(ID = 1:7,  ID1 = 1:7)
x 
y
union(x,y)#Rows that appear in either or both x and y.
union_all(x,y) 




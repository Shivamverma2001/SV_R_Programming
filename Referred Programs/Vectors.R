#==============================================
#atomic vector for numeric
a = 12
print(a)
#atomic vector for integer
b = 12L
print(b)
#atomic vector for logical
c = TRUE
print(c)
#atomic vector for character
d = "Hello"
print(d)
#atomic vector for complex
e = 2+4i
print(e)

x = 3.8 : 8.4
print(x)

a = seq(4,7,length.out=6)
print(a)

b = seq(10,15,by = 0.5)
b

a = c("Hll", "W", 1,'o')
a

a = c(10, 20, 30, 40, 50)
a
print(a[2])
print(a[c(1:5)])
print(a[c(TRUE,FALSE,FALSE,TRUE,TRUE)])
print(a[c(-1,-3)])
print(a[c(2,4,5)])
a = NULL
a


X=c(1,2)
df=data.frame(x=1:3,y=5:7)
X
df
is.vector(X)
is.data.frame(df)


x <- 1:7
x
y <- 2 : -2
y
x = seq(0,10, by = 2)
x
x[c(2,-4)]
x[c(2.9,3.54)]
x
x[c(5.2, 6.87)]
v <- 3.8:11.4
print(v)
#=============
a = 1:5
a
a[2]= 20
a
a[a<3] = 100
a
a= a[1:4]
a
a = NULL
a
a[2]
c = 1:6
c
c[6] = NULL
c
c[1] = NULL
c= NULL
c


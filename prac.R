print(paste0("Hello","Hi","Shivam",collapse = ""))
install.packages()
library()
.libPaths()
x<-read.csv("F:/Documents/Problem_solving/SV/SV_R_Programming/students.csv",header = TRUE)
x
ncol(x)
nrow(x)
print(max(x$Marks))
print(sum(x$Marks))
print(subset(x,x$Marks==19))
y<-sqldf("Select * from x where Marks<=20")
y
x=read_excel("F:/Documents/Problem_solving/SV/SV_R_Programming/Q2.xls")
x
str(x)
summary(x)
tail(x,10)
head(x,10)
as.Date("21/11/2001",format="%d%m%y")
r=format(23.123456789,width=10)
r
l<-list(c(1,2,3,4),list(4,5,6))
l
names(l)=c("vector","list")
l
f=gl(3,3,labels = c("t","s","f"))
f
df=data.frame(
  id=1:3,
  name=c("Shivam","Himanshu","Pari"),
  salary=c(1000,900,800),
  sd=c("21/11/2001","1/7/2003","14/11/2001"),
  stringsAsFactors = FALSE
)
df
df$dep=c("it","emp","sal")
df
hsize=4
df=df%%mutate(hsize)
x=c(1:5)
y=lapply(x,function(i)  i^2)
y
view(mpg)
ggplot(mpg)+geom_bar(aes(x=manufacturer,fill=manufacturer))
ggplot(mpg,aes(x=cty,y=hwy))+geom_point()
ggplot(mpg,aes(x=cty,y=hwy,group=1))+geom_point()+geom_line()
ggplot(mpg,aes(x="",y=class,fill=class))+geom_col(color="black")+coord_polar(theta = model)
view(USArrests)
str(USArrests)
x<-mpg
x
USArrests
iris
ggplot(iris)+geom_bar(aes(x=Species,fill=Species))
ggplot(iris)+geom_histogram(aes(x=Sepal.Width))
USArrests
median(USArrests$Murder)
Titanic
view(Titanic)
titanic <- as_tibble(Titanic)
titanic %>% describe()
Titanic %>% explore(Class, target = Survived, n = n, split = FALSE)
tit=as.table(Titanic)
tit
titanic %>% describe()
titanic %>% explore_all(n = n)
titanic %>% explore(Class, target = Survived, n = n, split = FALSE)
LifeCycleSavings
LifeCycleSavings["row.names"]
LifeCycleSavings0 <- data.frame(LifeCycleSavings)
library(data.table)
setDT(LifeCycleSavings0, keep.rownames = "country")[]
setDT(LifeCycleSavings0,keep.rownames = "country")[]
USArrests
us=data.frame(USArrests)
setDT(us,keep.rownames = "country")[]
us$country
grep("b",us$country,ignore.case = FALSE)
US=rownames(USArrests)
us
USArrests
US

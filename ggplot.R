install.packages("tidyverse")
install.packages("ggplot")
install.packages("ggplot2")
install.packages("dblyr")
# bar chart
library(tidyverse)
view(mpg)
#mpg is a fuel economy data set
#ggplot is a package to create complex plots
#geom_bar makes the height pf the bar proportion
#number of cases in each group 
#aes(aesthetic) is something that is visual
ggplot(mpg)+geom_bar(aes(x=class))
###scatter plot diagram
library(ggplot2)
#geom_point() will add points to the plot to create a line and point graph
view(mtcars)
ggplot(mtcars,aes(x=drat,y=mpg))+geom_point()
#line chart
val<-data.frame(course=c('DSA','C++','R','Python'),num=c(77,55,80,60))
val
ggplot(data=val,aes(x=course,y=num,group=1))+geom_line()+geom_point()
#pie chart
df<-data.frame(value=c(10,23,15,18),group=paste0("G",1:4))
df
#fill is used to fill color in pie chart
#color is for outline of angles of pie
#theta is the angle of pie
#geom_col() is used when heights of the bars
#are used to represent values in the data
ggplot(df,aes(x="",y=value,fill=group))+geom_col(color="black")+coord_polar(theta="y")
#Donut chart
library(dplyr)
df<-data.frame(value=c(10,23,15,18),group=paste0("G",1:4))
hsize<-4
df
df<-df %>% mutate(x=hsize)
df
ggplot(df,aes(x=hsize,y=value,fill=group))+geom_col()+coord_polar(theta = "y")+xlim(c(0.7,hsize+0.5))
#Small hole
hsize<-1
df
df<-df %>% mutate(x=hsize)
df
ggplot(df,aes(x=hsize,y=value,fill=group))+geom_col()+coord_polar(theta = "y")+xlim(c(0.2,hsize+0.5))

#Heat Map
library(ggplot2)
library(reshape2)
getwd()
df <- read.csv("F:/Documents/Problem_solving/SV/SV_R_Programming/bestsellers1.csv")
#cor() will calculate correlation coefficient
data <- cor(df[sapply(df,is.numeric)])
data
#melt is used to reshape long data into wider format
data1 <- melt(data)
data1
#geom_tile is used create tile with rectangles
ggplot(data1, aes(x = Var1,
                  y = Var2,
                  fill = value))+geom_tile()
#rmardown->flex library->flexdashboard ``` ``` 
str(iris)
View(iris)
table(iris$Species)
round(prop.table(table(iris$Species))*100,digits = 1)
summary(iris)
normalize<-function(x){
  num<-x-min(x)
  denom<-max(x)-min(x)
  return (num/denom)
}
iris_norm<-as.data.frame(lapply(iris[1:4],normalize))
summary(iris_norm)
iris_norm
#seed if we want to generate(by sample) same again we use seed
#sample 
#by replace =TRUE it allows duplicacy like we have 12 and we want to generate 5 numbers from them it give error but by replace=TRUE
#it allow duplicacy
#prob is use to control the  count of number how many time it repeats
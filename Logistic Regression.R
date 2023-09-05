data(mtcars)
?mtcars
str(mtcars)
install.packages('caTools')
library(caTools)
#data preparation
split<-sample.split(mtcars,SplitRatio = 0.7)
split
training<-subset(mtcars,split=="TRUE")
training
testing<-subset(mtcars,split=="FALSE")
testing
#logistic regression glm
model<-glm(vs ~ wt+disp,training,family="binomial")
summary(model)
testing
data=data.frame(disp=275.8,wt=3.780)
answer<-predict(model,data,type = "response")
answer>0.5
predict_reg<-predict(model,testing,type = "response")
predict_reg>0.5

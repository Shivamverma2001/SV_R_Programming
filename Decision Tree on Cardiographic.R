#LB-> FHR baseline (beats per minute)
#AC-> # of accelerations per seconds
#FM-> # of fetal movements per second
#N=normal, S=suspect, P=pathologic
#we find NSP
#N=1,S=2,P=3

#done by ctree
getwd()
data<-read.csv("F:/Documents/Problem_solving/SV/SV_R_Programming/Cardiotocographic.csv",stringsAsFactors = FALSE)
str(data)
View(data)
data$NSPF<-factor(data$NSP)#integer variable
#will be converted into factor
str(data)#a new variable now added into existing
View(data)

#Training and Testing
set.seed(1234)
pd<-sample(2,nrow(data),replace = TRUE,prob=c(0.8,0.2))
#sample of size 2, no of rows as equal to data replacement as TRUE. It means the sample that is can be picked again. Prob means 
#probability of sample as 80% training and 20% testing
train<-data[pd==1,]
test<-data[pd==2,]

#Decision Tree
install.packages("party")
library(party)
tree<-ctree(NSPF~LB+AC+FM,data=train,controls = ctree_control(mincriterion = 0.90,minsplit = 200))
#using LB, AC, FM to classify data. controls is a parameter to control the length of the train 
#mincriterion is the confidence level. It means that 90% confidence is there
#that a variable is significant. minsplit is 200 means that a tree will split into 2
#when the sample size is at least 200


#?ctree_control   is use to check about the function 
tree
plot(tree)

#prediction
predict(tree,test,type="prob")
predModel<-predict(tree,test)
table(predModel,test$NSPF)

#Decision Tree with rpart package
library(rpart)
tree1<-rpart(NSPF ~ LB+AC+FM, train)
library(rpart.plot)
rpart.plot(tree1)
predict(tree1,test)

#misclassification error for training data
table<-table(predict(tree),train$NSPF)
table
1-sum(diag(table)/sum(table))#amount of misclassification

#misclassification error for testing
predtest<-predict(tree,test)
table<-table(predtest,test$NSPF)
table
1-sum(diag(table)/sum(table))#amount of misclassification

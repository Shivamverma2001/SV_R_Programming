#Decision Tree by C5.0 Algo
#by C4.5 and ID3

#on risky bankloans dataset

#loan in default 1->no, 2->yes  

#data exploration
credit<-read.csv("F:/Documents/Problem_solving/SV/SV_R_Programming/credit.csv")
View(credit)
str(credit)
table(credit$checking_balance)
table(credit$savings_balance)
summary(credit$months_loan_duration)
summary(credit$amount)
table(credit$default)

#data preperation
#split into testing and training set
set.seed(123)
#generate 1-1000 observation for 900 obsevation like 90%
train_sample<-sample(1000,900)
str(train_sample)
credit_train<-credit[train_sample,]
str(credit_train)
credit_test<-credit[-train_sample,]
credit_test
str(credit_test)
table(credit_train$default)
prop.table(table(credit_train$default))
table(credit_test$default)
prop.table(table(credit_test$default))

#training a model
install.packages("C50")
library(C50)
credit_train$default<-as.factor(credit_train$default)
str(credit_train$default)
credit_model<-C5.0(credit_train[-17],credit_train$default)
credit_model

#model evaluation
credit_pred<-predict(credit_model,credit_test)
library(gmodels)
CrossTable(credit_test$default,credit_pred,dnn=c("actual default","predicted default"))
library(caret)
confusionMatrix(table(credit_pred,credit_test$default))

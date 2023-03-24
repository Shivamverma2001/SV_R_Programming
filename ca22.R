cI<-34000
pI<-25000
vegI<-20000
total<-200000
pTotal<-cI+pI+vegI
pTotal
profit<-total-pTotal
profit


n=as.integer(readline("Enter a number: "))
vec1<-c(1)
vec2<-c(2)
if(n>=10&&n<=50){
  i=3
  vec1<-c(1)
  vec2<-c(2)
  while(i<=n){
    vec1<-c(vec1,i)
    vec2<-c(vec2,i+1)
    i=i+2
  }
  cat("Odd",vec1)
  cat("\n")
  cat("Even",vec2)
}


n=as.integer(readline("Enter number of pencils "))
total<-0
i=1
if(n>=1&&n<=10){
  while(i<=n){
    total=total+as.integer(readline("Price of pencil "))
    i=i+1
  }
  print(total)
}else{
  print("Invalid code")
}


num1<-as.integer(readline("Enter num1 "))
if(num1>=20&&num1<=50){
  num2<-as.integer(readline("Enter num2 "))
  if(num2>=10&&num2<=20){
    cat("+",num1+num2,"\n")
    cat("-",num1-num2,"\n")
    cat("*",num1*num2,"\n")
    cat("/",num1/num2,"\n")
    cat("%%",num1%%num2,"\n")
    cat("**",num1**num2,"\n")
  }else{
    print("Invalid input")
  }
}else{
  print("Invalid input")
}

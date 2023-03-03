#Program 1 
#Create  a function to print squares of numbers
#in sequence
function1<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}
#call the function function1 supplying 6 as an argument
function1(6)

#Program 2
#Create  a function without argument
#in sequence
function1<-function(){
  for(i in 1:5){
    b<-i^2
    print(b)
  }
}
#call the function without supplying 6 an argument
function1()

#Program 3
#Create  a function with argument
#in sequence
new.function<-function(a,b,c){
  result<-a+b*c
    print(result)
}
#call the function by position of arguments
new.function(11,3,5)
#call the function by names of arguments
new.function(c=11,a=3,b=5)

#Program 4
#Create  a function with argument
#in sequence
new.function<-function(a=3,b=6){
  result<-a*b
  print(result)
}
#call the function without giving arguments
new.function()
#call the function with arguments
new.function(9,5)

#Program 5
#Create  a function with argument
#in sequence
new.function<-function(a,b){
  print(a^2)
  print(a)
  print(b)
}
#call the function by position of arguments
new.function(11)
#give error when it print b
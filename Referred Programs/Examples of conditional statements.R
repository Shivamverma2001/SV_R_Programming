#Program to check person is eligible to cast vote or
#not using if else
age = as.numeric(readline("Enter your age = "))
if(age>=18){
  print("You are eligible to cast a vote")
} else{
  print("You are not eligible to cast a vote")
}







x = as.numeric(readline("Enter length: "))
if(x>=22){
  print("Enter breadth: ")
  y = as.numeric(readline("Enter width: "))
  z = x*y
  print(z)
}else{
  print("invalid Length")
}




#Program to find whether a number is even or odd
num = as.numeric(readline("Enter any number = "))
if(num%%2==0){
  cat(num , "is even")
} else{
  cat(num , "is odd")
}


#Program to find area of a room
l = as.numeric(readline("Enter length of a room = "))
if(l>=22){
  b = as.numeric(readline("Enter breadth = "))
  area = l*b
  cat("Area of a room is ", area)
} else{
  print("Invalid Input")
}



#Program to find the salary
a = as.numeric(readline("Enter working hours
                        of a day = "))
b = as.numeric(readline("Enter the extra working
                        hours = "))
if(b>=2 && b<=4){
  c = as.numeric(readline("Enter per hour salary = 
                          "))
  d = (a+b)*c*30
  cat("Total Salary ", d)
}








#Program to find the grade
a = as.numeric(readline("Enter marks in Data Management "))
b = as.numeric(readline("Enter marks in Predictive Analytics "))
c = as.numeric(readline("Enter marks in R Prog "))
d = as.numeric(readline("Enter marks in Tableau "))
total = a+b+c+d
per = (total/4)
per
if(per>=90 && per<=100){
  print("Grade A")
} else if(per>=80 && per<=89){
  print("Grade B")
} else if(per>=70 && per<=79){
  print("Grade C")
} else if(per >=60 && per<=69){
  print("Grade D")
} else if(per>=50 && per<=59){
  print("Grade E")
}  else if(per>= 40 && per<=49){
  print("Grade F")
} else{
  print("Fail")
}


#
a = as.numeric(readline("Enter the value "))
if(a>0){
  print("Hello")
} else {
  print("Bye")
}

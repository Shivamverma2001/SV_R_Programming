#Program to find even and odd number
num1=function(num){ #7
  if(num%%2==0){
    print("Even Number")
  } else{
    print("Odd Number")
  }
}
num = as.numeric(readline("Enter a number = "))#3
num1(num)#num1(3)



#Program to find the area of a circle
radius = as.numeric(readline("Enter the radius = "))#2
area = function(radius){ #function(2)
  area = 3.14 * radius^2
  print(area)
}
area(radius)#area(2)



#Program to find the area and perimeter of rectangle
l=as.numeric(readline("Enter length = ")) #4
b=as.numeric(readline("Enter breadth = ")) #2
fun=function(l,b){ #4,2
  area = l*b #8
  cat("Area is ", area, "\n")
  peri = 2*(l+b) #2*6
  cat("Perimeter is ", peri)
}
fun(l,b) #fun(4,2)



#Program to find the bill
n = as.numeric(readline("Enter the number of pencils = ")) #3
total = 0
if(n>=1 && n<=10){ #true
  for(i in 1:n){ #3 in 1 2 3 
    p=as.numeric(readline("Enter the price of a pencil = "))#4
    total = total + p #12
  }
  cat("Total Bill = ", total)
} else {
  print("Invalid Input")
}


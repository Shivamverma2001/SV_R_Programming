#numbers from n to 0
n = as.numeric(readline("Enter a value = "))    #5
cat("numbers from ", n,"to 0") 
while(n>=0){    #-1>=0
  print(n)     #5 4 3 2 1 0
  n=n-1       #-1
}




#even numbers
a = c(2,5,3,9,8,11,6)
count=0
print("Even Numbers ")
for (b in a) { #6
  if(b%%2==0){ #true
    print(b) #2 8 6
    count=count+1 #3
  }
}
cat("number of even values = ", count)
    
    
    
#factorial of a number using for loop
num = as.numeric(readline("Enter a number = ")) #3
factorial = 1
for(i in num:1){ # 3 2 1
  if(num>=1){ #2>=1
    factorial = factorial * num #6
    num = num-1 #0
  }
}
print(factorial)

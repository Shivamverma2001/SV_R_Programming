#Q1. Hemant is a civil engineer. He is working on one project where he needs to find the area of the rectangular rooms.
#He asks his friend to give him some program with the help of which Hemant can calculate the area of a room by just entering 
#length and breadth of a room. 
#Input Constraint:
#  Length>=22
#If length satisfies the condition, then ask user to enter breadth, otherwise print a message “Invalid Length”.
rectangle<-function(length,breath){
  area=length*breath
  print(area)
}
area=0
breath=0
length=as.integer(readline())
print(length)
if(length<22){
  print("Invalid Length")
}else if(length>=22){
  breath=as.integer(readline())
  rectangle(length,breath)
}
  
  
  
  #Ravinder works in the accounts department of the Lovely Professional University.
  #He wants to create one application for the employees so that they themselves can calculate their salary in the end of every month. 
  #He asked one of the people of the Infotech Department to do the same. 
  #According to Ravinder, initially the application must ask to enter the total working hours of the day. 
  #Depending upon that ask a person to enter the extra working hours. 
  #After checking the condition for extra working hours, employee must enter his per hour salary. 
  #Then finally calculate the salary for 30 days.
  
  #Input Constraint
  #2 <= Extra hours >=4 
  hour=as.integer(readline())
  extra=as.integer(readline())
  if(extra>=2&&extra<=4){
    salary=as.integer(readline())
    total=(hour+extra)*salary*30
    print(total)
  }
  
  
  #Q3. Mihir studies in Lovely professional University. He has a habit of buying pencil every day from the tuck shop. 
  #The cost of pencil is different. His father has told the tuck shop vendor to send him a bill week wise so that he can pay the 
  #bill per week instead of paying every day.  Create a function named as “bill” to display the final bill value on the screen.
  #Input Constraint:
  #  1<=n<=10
  #Where n is the number of pencils.
  #If number of pencils lie in the above said range, print the bill otherwise “Invalid Input”
  
  bill<-function(n,amount){
    print(n*amount*7)
  }
  n=as.integer(readline())
  if(n>10){
    print("Invalid Input")
  }else{
    amount=as.integer(readline())
    bill(n,amount)
  }
  
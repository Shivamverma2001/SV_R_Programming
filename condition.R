x<-30L
if(is.integer(x)){
  print("x is an Integer")
}
#if else
x<-c("what","is","Truth")
if("Truth" %in%x){
  print("Truth is found")
}else{
  print("Truth is not found")
}
#if else if else
if("Truth" %in%x){
  print("Truth is found")
}else if("truth" %in%x){
  print("truth is found")
}else{
  print("Truth is not found")
}
x
#switch
x<-switch(
  3,
  "First",
  "second",
  "hi",
  "forth"
)
print(x)

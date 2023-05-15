#1. apply function array apply works on both rows and columns
x = matrix(c(1,2,3,4),nrow=3,ncol=4,
           byrow = TRUE)
x
y=apply(x, 1, sum) #1 means = row
y
z=apply(x, 2, sum) #2 means = columns
z
colSums(x)
rowSums(x)
#2. lapply function : list apply, works on columns
a <- list(A = c(8, 9, 7, 5),
          B = data.frame(x = 1:5,
                  y = c(5, 1, 0, 2, 3)))
a
lapply(a, sum)
#another example of lapply
d <- 1:3
fun <- function(x) {
  x ^ 2
}
a=lapply(d, fun)
a
is.list(a)

#3. sapply: simplified apply, works only on column
sapply(1:4, sqrt)
#another example of sapply

out=numeric(10)
out
for (i in 1:10) {
  out[i] <- i ^ 2
}
out
sapply(1:10, function(i) i ^ 2)
#another example of sapply
List <- list(A = 1:5, B = 6:20, C = 1)
sapply(List, length)
#sapply vs lapply:sapply returns a vector, 
#matrix or an array 
#instead of a list.Consider the given example
sapply(c(3, 5, 7), exp)
lapply(c(3, 5, 7), exp)
#if you set the simplify argument of the 
#sapply function to FALSE 
#you will get the same output as the 
#lapply function.
#4. tapply function tag apply, where groups are 
#there
result = data.frame(id=c(1,2,3,4),
        
                    
                    
                    name=c("John", "Max", "Tom","Jack"),
      marks=seq(20,35,5),section=c("A","B","A","B"))
result
id <- result$id
marks <- result$marks

section <- factor(result$section,
               labels = c("Section A", "Section B"))
section
mean_marks <- tapply(marks, section, mean)
mean_marks
#5. mapply() multivariate apply or multiple 
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(2, 4, 1, 2, 10)
mapply(max, vector1, vector2)
#another example of mapply
vec1 <- c(1, 2, 3, 4)
vec2 <- c(2, 4, 6, 8)
vec3 <- c(3, 6, 9, 12)
mapply(function(val1, val2, val3)
  val1*val2*val3, vec1, vec2, vec3)
#another example
mapply(rep, 1:3, times=5)
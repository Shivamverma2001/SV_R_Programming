v <- c("Hello","loop")
cnt <- 2
repeat {
  print(v)
  cnt <- cnt+1
  if(cnt > 5) {
    break
  }
}

#################

v <- c("Hello","while loop")
cnt <- 2
while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}
##############
v <- LETTERS[1:4]
for ( i in v) {
  print(i)
}
###############
v <- letters[11:14]
for ( i in v) {
  print(i)
}
###################
a = 1:10
for (i in a) {
  print(i)
}


library(dplyr)
df=data.frame(x=c(12,31,4,66,78),
              y=c(22.1,44.5,6.1,43.1,99),
              z=c(TRUE,TRUE,FALSE,TRUE,TRUE))
df
filter(df, x<50 & z==TRUE)
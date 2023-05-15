library(dplyr)
df=data.frame(x=c(12,31,4,66,78),
              y=c(22.1,44.5,6.1,43.1,99),
              z=c(TRUE,TRUE,FALSE,TRUE,TRUE))
df
filter(df, x<50 & z==TRUE)
################
df
df %>%
filter(y < 45, z != FALSE)
#############
df=data.frame(x=c(12,31,NA,NA,NA),
              y=c(22.1,44.5,6.1,10,99),
              z=c(TRUE,TRUE,FALSE,TRUE,TRUE))
df
df %>% filter(!is.na(x))
###############
df=data.frame(x=c(12,31,10,2,99),
              y=c(22.1,44.5,6.1,10,99),
              z=c("Apple","Guava", "Mango", "Apple","Mango"))
df
df %>%
  filter(z %in% c("Apple", "Mango"))

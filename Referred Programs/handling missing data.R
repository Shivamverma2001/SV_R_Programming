x<- c(NA, 3, 4, NA, NA, NA)
is.na(x)
############
#NAN means divided by zero
x<- c(NA, 3, 4, NA, NA, 0 / 0, 0 / 0)
is.nan(x)
####################
x <- c(1, 2, NA, 3, NA, 4)
d <- is.na(x)
x[! d]
##################
x <- c(1, 2, 0 / 0, 3, NA, 4, 0 / 0)
x
x[! is.na(x)]
################
# Creating a data frame
df <- data.frame (c1 = 1:8,
                  c2 = factor (c("B", "A", "B", "C",
                                 "A", "C", "B", "A")))
df
# Filling some NA in data frame
df[4, 1] <- df[6, 2] <- df[7,2] <- NA
df
# Printing all the levels(NA is not considered one)
levels(df$c2)

# excludes every row containing even one NA
na.exclude (df)

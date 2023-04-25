#Rules for strings: Valid Strings
a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
d
################################################
#Invalid Strings
#e <- 'Mixed quotes"
print(e)

#f <- 'Single quote ' inside single quote'
print(f)

#g <- "Double quotes " inside double quotes"
print(g)


##################################################
#paste(): Many strings in R are combined using the paste() function.
#It can take any number of arguments to be combined together.
print(paste("Jan", "Feb", 'March', 'April'))

a="hello"
b="how"
c="are"
d="you"
e="Fine Thankyou"
print(paste(a,b,c,d, sep = " "))
print(paste(a,b,c,d))
print(paste(a,b,c,d,sep=" & "))
print(paste(a,b,c,d,e, sep = "", collapse = ""))
#remove the space in adjacent lines


###########################################################
#format(): Numbers and strings can be formatted to a specific style using
#format() function.
# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

format(1.4, nsmall = 5)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(1.7, width = 4)
print(result)

# Left justify strings.
result <- format("Hello", width = 6, justify = "l")
print(result)

# Justify string with center.
result <- format("Hello", width = 7, justify = "c")
print(result)

# Justify string with right.
result <- format("Hello", width = 7, justify = "r")
print(result)
###################################################################################################
#nchar(): This function counts the number of characters
#including spaces in the string
result<-nchar("Count the number  of characters")
print(result)
nchar("R Programming $$$")
###################################################################################################
#toupper() and tolower():these functions change the
#characters of a string to lower case and upper case
result<-toupper("changing To upper")
print(result)
#changing to lower case
result<-tolower("Changing to Lower")
print(result)
###################################################################################################
#substring(): This function extract parts of a string
#extract characters from 5th to 7th position
result<-substring("Extact",5,7)
print(result)
##################################################################################################
#sprintf(): This function makes of the formatting command
#are styled after c
sprintf("%s scored %.2f percent","Matthew",72.3)
##################################################################################################
#strsplit(): It splits the sequence into words
str="Splitting sentence into words of my"
strsplit(str," ")
##################################################################################################

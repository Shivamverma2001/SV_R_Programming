#1) grep
#use grep() to match the literal into the character
#vector of data$species.
#grep() function in R Language is used to search
#for matches of a pattern
#within each element of the given string.
# Creating string vector
x = c("R Prog", "r prog", "TABLEAU", "tableau")
grep("r prog", x, ignore.case = TRUE)
grep("r prog", x, ignore.case = FALSE)
x <- c("GFG", "gfg", "Greek", "GREEK")
grep("gfg", x)
grep("Greek", x)
grep("gfg", x, ignore.case = FALSE)
grep("Greek", x, ignore.case = TRUE)
#another example
data=iris
g=grep("setosa", data$Species)
g
length(g)
g=grep("a", data$Species)
g
length(g)
#another example
# Creating string vector
x <- c("GFG", "gfg", "Greek", "GREEK")
grep("gfg", x, ignore.case = TRUE, value = TRUE)
grep("G", x, ignore.case = TRUE, value = TRUE)
grep("Greek", x, ignore.case = FALSE, value = FALSE)
grep("GREEK", x, ignore.case = FALSE, value = FALSE)
grep("r", x, ignore.case = TRUE, value = TRUE)

# or
g <- grep("versicolor|setosa", data$Species)
g
g <- grep("versicolor&setosa", data$Species)
g
length(g)

# either small S or capital S
g <- grep("[Ss]etosa", data$Species)
g
g <- grep("[Ss]", data$Species)
g
length(g)

a = c("apple", "Apple", "ant", "Ant")
grep("[aA]",a)


# start with
g <- grep("^v", data$Species)
g
length(g)
#ends with
g <- grep("a$", data$Species)
g
length(g)


# 2) grepl: returns logical answer
# start with
g <- grepl("^v", data$Species)
g
g <- grepl("a$", data$Species)
g
# 3) sub()
a="England is Beautiful. England is a part of UK"
a1=sub('England','UK',a)
a1
a2=sub('and','UK',a)
a2
# 4) gsub()
gsub('England','UK',a)
# gregexpr()
a=c('Hello 13','2ABC','1Ab345','TYUU')
grep("\\d",a) #where there is a number, it returns the index of
#the string
gregexpr("\\d",a)# where there is a number, it returns the index of every
#number in each string
a
gregexpr("\\w",a)# where there is alphanumeric except space, it returns the index
#in each string
a
gregexpr("\\w+",a)# an alphanumeric of any length, returns the index of
#every first alphanumeric
gregexpr("\\d+",a)# digit of any length
gregexpr("\\s",a)# spaces, it returns the index in each string
gregexpr("\\S",a)#any non space, it returns the index in each string
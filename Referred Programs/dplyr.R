# By limiting the choices the focus can now be more on
#data manipulation difficulties.
# There are uncomplicated "verbs", functions present for tackling every common 
#data manipulation and the thoughts can be translated into code faster.
# There are valuable backends and hence waiting time for the computer reduces.
library(dplyr)



# Create a data frame with missing data
d <- data.frame(name=c("Ab", "B",
                        "C", "D"),
                 age=c(7, 5, 9, 16),
                 ht=c(46, NA, NA, 69),
                 school=c("yes", "yes", "no", "no"))
d
#1. filter() For choosing cases and using their values
#as a base for doing so.Finding rows with NA value
d %>% filter(is.na(ht)) #%>% forward pipe operator
# Finding rows with no NA value
d %>% filter(! is.na(ht))
#2. arrange(): For reordering of the cases.
# Arranging name according to the age
d.name<- arrange(d, age)
print(d.name)
d.name<- arrange(d, desc(age))
print(d.name)
#3. select() and rename(): For choosing variables and using their names
#as a base for doing so.startswith() function to print only ht data
select(d, starts_with("ht"))
# -startswith() function to printeverything except ht data
select(d, -starts_with("ht"))
# Printing column 1 to 2
select(d, 1: 2)
# Printing data of column heading containing 'a'
select(d, contains("a"))
# Printing data of column
# heading which matches 'na'
select(d, matches("a"))
#4. mutate() and transmute(): Addition of new variables which are 
#the functions of prevailing variables.
#mutate returns all the columns along with new column
mutate(d, x3 = ht + age)
# Calculating a variable x3 which is sum of height
# and age printing without ht and age
#transmute only returns the new column
transmute(d, x3 = ht + age)
#5. summarise(): Condensing various values to one value.
# Calculating mean of age
summarise(d, mean = mean(age))
summarise(d, mean(age))
# Calculating min of age
summarise(d, min(age))
# Calculating max of age
summarise(d, med = max(age))
# Calculating median of age
summarise(d, med = median(age))
#6. sample_n() and sample_frac(): For taking random specimens.
# Printing three rows
#sample_n selects n random rows
sample_n(d, 3)
#sample_frac selects random % rows
# Printing 50 % of the rows
sample_frac(d, 0.50)


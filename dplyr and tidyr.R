library(dplyr)
# Create a data frame with missing data
d <- data.frame(name=c('Ab', "B",
                       "C", "D"),
                age=c(7,5,9,16),
                ht=c(46, NA, NA, 69),
                
                school=c("yes", "yes", "no", "no"))
d

#1. filter() for choosing cases and using   values as a base
#for doing so
#finding rows with NA value
d %>% filter(is.na(ht)) #%>% forward pipe operator
# finding rows with no NA value 
d %>% filter(! is.na(ht))
library(tidyr)
n = 10
# creating a data frame
tidy_dataframe = data.frame(
  S_No = c(1:n),
  Group.1 = c(45,56,75,52,96,
              98,68,75,46,36),
  Group.2 = c(117,89,66,334,90,
              101,178,233,45,200),
  Group.3 = c(29,101,239,289,176,
              320,89,109,199,56))
# print the elements of the data frames
tidy_dataframe
#1. gather() function: It takes multiple columns 
#and gathers them
#into key-value pairs. Basically it makes "wide" data
#longer using gather() function on tidy_dataframe
long <- tidy_dataframe %>%
  gather(Group,Frequency,
         Group.1:Group.3)
long

#2.Separate() function: it converts longer data to a wide data
# the separate() functions turns a single character columns in
#columns
separate_data <- long %>% separate(Group, c("Allotment",
                                            "Number"))
separate_data

#3. unite() function(): it merges two columns into one column
#the unite() function is a convenience function to paste 
#multiple variable values into one. In essence, it combine
#variables of a single observation into one variable.
#use unite() function to glue
#Allotment and number columns
unite_data <- separate_data %>%
  unite(Group, Allotment,
        Number, sep = ".")
unite_data
#4. spread() function: it helps in reshaping a longer form into
#wider format. The spread() function spreads a key value points
#multiple columns.
#use unite() function to make data wider
back_to_wide <- unite_data %>%
  spread(Group, Frequency)
back_to_wide
#5. nest() function: It creates a list of data frames containing
#all the nested variables
df <- tidy_dataframe
#nest column Group.1 in
#tidy_dataframe using nest()
df%>% nest(data=c(Group.1))
#y. unnest() funtion: It basically reverses the 
#nest function. It makes each element of the list its own
df%>% unnest(Group.1)
df1<-iris
names(iris)
#nesting the species column in
#the df data frame using nest()
head(df1 %>% nest(data =c(Species)))#output(i)
#unnesting the species column
#in the df data frame using unnest()
head(df1 %>% unnest(Species))#output(ii)
#7. fill() function: used to fill the missing values in
#column using the previous entry
df2<- data.frame(Month=1:6,Year=c(2000,rep(NA,5)))
df2#output(i)
#use fill() to fill missing values in year column in df data frame
df2%>% fill(Year)#output(ii)
#8. full_seq() function; It basically fills the missing value
# a vector which should have been observed but weren't
#The vector should be numeric
#creating a numeric vector
num_vec<-c(1,6,10,14,18,20)
num_vec
#use full_seq() to fill missing values in num_vec
full_seq(num_vec,1)
x=c(1,4,9)
full_seq(x,1)
#9. drop_na() function: This function drops rows containing missing value
#create a tibble df with missing vales
df3<- data.frame(S.No=c(1:10),Name=c("John","Smith","Peter","Luke","King",rep(NA,5)))
#print df tibble
df3 #output(i)
#use drop_na() to drop columns in df with missing values
df3%>% drop_na(Name)#output(ii)
df=data.frame(x=1:3,y=c(1,rep(NA,2)))
df
df%>%drop_na(y)
#10. replace_na() function: It replaces missing values
df4 <- data.frame(S.No=c(1:10),Name=c("John","Smith","Peter","Luke","King",rep(NA,5)))
df4
#use replace_na() to replace missing values or na


library("sqldf")
install.packages("readxl")
library("readxl")
#getwd()
Q2=read_excel("F:/Documents/Problem_solving/SV/SV_R_Programming/Q2.xls")
sqldf("select * from Q2 limit 10")# display 10 rows
sqldf("select Profit as 'P',Quantity from Q2 limit 10")
#filtering the data
sqldf("select Discount,Quantity,region from Q2
where region=='Central'
limit 20")
#Sorting
sqldf("select * from Q2 order by City desc limit 5")
sqldf("select City,Profit,State from Q2 order by City,
State desc limit 20")
sqldf("select City,State,Profit from Q2 order by
City desc,State limit 20")
#like
sqldf("select city,profit from Q2 where City like 'H%'
limit 5")
sqldf("select city,profit from Q2 where City like 'He%' ")
sqldf("select city,profit from Q2 where City like '%H' ")
sqldf("select city,profit from Q2 where City like '%H%' ")
sqldf("select city,profit from Q2 where City like '_H%' ")
#aggregrate functions
sqldf("select sum(Profit) as 'Total_Profit' from Q2 ")
sqldf("select min(Profit) as 'Min_Profit'from Q2 ")
sqldf("select max(Profit) as 'Max_Profit' from Q2 ")
sqldf("select count(Profit) as 'Number_of_records' from Q2 ")
#Nested select
a<<-sqldf("select max(profit) from Q2")
a
b=sqldf("select region,Profit from Q2 where
Profit== (Select max(Profit) from Q2)")
b
sqldf("select region,Profit from Q2 where
Profit== (Select min(Profit) from Q2)")
sqldf("select city from Q2 where
Profit== (Select max(Profit) from Q2)")
sqldf("select City, Profit from Q2 where
Profit==(Select min(Profit) from Q2)")
a=sqldf("select Segment from Q2 ")
a
head(a,n=10)
tail(a,n=10)
sqldf("select distinct Segment from Q2 ")
b=sqldf("select Segment, profit from Q2 order by profit")
head(b)
Q2=read_excel("F:/Documents/Problem_solving/SV/SV_R_Programming/Project/ABC.xlsx")
a=sqldf("select Training_Type,sum(Revenue) as Revenue from Q2 ")
a
#group by
sqldf("Select sum(Sales) from Q2")
sqldf("Select region, sum(sales) as Total_Sale from Q2 where region in ('Central','West') group by region")
sqldf("Select region,sum(sales) from Q2 group by region")
sqldf("Select region,sum(sales) from Q2 group by category")
sqldf("Select region,sum(sales) from Q2 group by state")
sqldf("Select region, sum(sales),sum(profit), sum(sales)-sum(profit) as cost from Q2 group by region")

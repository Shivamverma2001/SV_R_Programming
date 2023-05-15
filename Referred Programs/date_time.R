# create a date
x<-as.Date("2023-03-27")
x
# specify the format
y<-as.Date("05/30/2017", format = "%m/%d/%Y")
y
# take a difference
Sys.Date() - as.Date("2020-01-03")
# alternate method with specified units
difftime(Sys.Date(), as.Date("2020-01-03"), 
         units = "hours")
dts=x
weekdays(dts)
months(dts)
quarters(dts)
Sys.Date()

library(dplyr)
View(mtcars)
#display the columns starting with h in mtcars dataset in r studio
mtcars[grep('t$', colnames(mtcars)),]
mtcars[grep('^h', colnames(mtcars)),]
mtcars[grep('q', colnames(mtcars)),]
mtcars[grep('Mazda RX4', rownames(mtcars)),]
mtcars[grepl('Toyota Corona', rownames(mtcars)),]
c1<-count(mtcars[grepl('0', rownames(mtcars)),])
c2<-count(mtcars[grepl('1', rownames(mtcars)),])
c1$n+c2$n

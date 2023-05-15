# read file
a=read.csv(file.choose(),header=TRUE)
str(a)
summary(a)

# build corpus: collection of doc
# each tweet will be consider as documents
library(tm)
#corpus<-iconv(a$text)
corpus<- Corpus(VectorSource(a$text))
inspect(corpus[1:5])

# data cleaning

corpus<- tm_map(corpus,tolower)
inspect(corpus[1:5])


corpus<-tm_map(corpus,removePunctuation)# remove puntuations like , .
inspect(corpus[1:5])


corpus<- tm_map(corpus,removeNumbers)
inspect(corpus[1:5])


cleanset<-tm_map(corpus,removeWords,stopwords('english'))
# remove common words
inspect(cleanset[1:5])


removeURL<- function(x)gsub('http.*', '' ,x)
cleanset<-tm_map(cleanset,content_transformer(removeURL))
inspect(cleanset[1:5])

cleanset<-tm_map(cleanset , removeWords,c('anyone','walker16'))
#remove speific words

cleanset<-tm_map(cleanset,gsub,pattern='stocks',replacement='stock')

cleanset<-tm_map(cleanset,stripWhitespace)
inspect(cleanset[1:5])


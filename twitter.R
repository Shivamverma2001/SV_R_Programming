download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

cred <- OAuthFactory$new(consumerKey='5Fwc2mCwnkDzld8dph4ZgvQmt',
                         consumerSecret='xwSGiuEtjbt1STZ789pVByzwnzrLGXrJt04KnZSVm7hvAfKIgK',
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')

save(cred, file="twitter authentication.Rdata")
load("twitter authentication.Rdata")




library("ggplot2") # GRAPHICAL VISUALIZATION
library("quanteda") # QUANTITATIVE ANALYSIS OF TEXTUAL DATA AND FOR TOKENS
library("plotly") # PLOTTING POLAR GRAPH
library("syuzhet") # CREATING SENTIMENTS USING GET_NRC_SENTIMENTS
library("wordcloud2") # FOR CREATING WORD CLOUD
library("twitteR") # FOR ACCESSING TWITTER DATA
library("ROAuth") # FOR AUTHENTICATING WITH TWITTER SERVER USING KEYS


library(twitteR)
setup_twitter_oauth('5Fwc2mCwnkDzld8dph4ZgvQmt','xwSGiuEtjbt1STZ789pVByzwnzrLGXrJt04KnZSVm7hvAfKIgK','1103898362141528064-P8HLymRzNN3Kv9md5FKhybyeQODWiX','7E4A2M7mCEFZpowqlePQHH5ybzb3maphb3MHddn6kXpjS')

search.string <- "#modi"
no.of.tweets <- 100
DATA2 <- searchTwitter(search.string, n=no.of.tweets, lang="en")
DATA2=twListToDF(DATA2)
View(DATA2)
write.csv(DATA2,file='C:/Users/Pardeep/Documents/tweet.csv',row.names=F)
getwd()

search.string <- "#kejriwal"
no.of.tweets <- 100
DATA1 <- searchTwitter(search.string, n=no.of.tweets, lang="en")
DATA1=twListToDF(DATA1)
View(DATA1)

search.string <- "#modi"
no.of.tweets <- 100
DATA2 <- searchTwitter(search.string, n=no.of.tweets, lang="en")
DATA2=twListToDF(DATA2)
View(DATA2)
write.csv(DATA2,file='C:/Users/Pardeep/Documents/tweet.csv',row.names=F)
getwd()


trends<- availableTrendLocations()
head(trends)
print(trends)


world<- getTrends(1)
world


#delhi
delhi<- getTrends(20070458)
delhi

#US
US<- getTrends(23424977)
US
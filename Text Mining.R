getwd()
sms_raw<-read.csv("F:/Documents/Problem_solving/SV/SV_R_Programming/sms_spam.csv",stringsAsFactors = FALSE)
str(sms_raw)
sms_raw$type <- factor(sms_raw$type)
str(sms_raw$type)
str(sms_raw)
table(sms_raw$type)
#install.packages("tm")
library(tm)
sms_corpus <- VCorpus(VectorSource
                      (sms_raw$text))
print(sms_corpus)
inspect(sms_corpus[1:2])
as.character(sms_corpus[[1]])
lapply(sms_corpus[1:2], as.character)
sms_corpus_clean <- tm_map(sms_corpus,
                           content_transformer(tolower))
as.character(sms_corpus[[1]])
as.character(sms_corpus_clean[[1]])
sms_corpus_clean <- tm_map(sms_corpus_clean,
                           removeNumbers)
a=stopwords()
a
sms_corpus_clean <- tm_map(sms_corpus_clean,
                           removeWords,
                           stopwords())
sms_corpus_clean <- tm_map(sms_corpus_clean,
                           removePunctuation)
as.character(sms_corpus_clean[[1]])
install.packages("SnowballC")
library(SnowballC)
wordStem(c("learn", "learned", "learning",
           "learns"))
sms_corpus_clean <- tm_map(sms_corpus_clean,
                           stemDocument)
sms_corpus_clean <- tm_map(sms_corpus_clean,
                           stripWhitespace)
as.character(sms_corpus_clean[[1]])
#sms_dtm <- DocumentTermMatrix(sms_corpus_clean)
#inspect(sms_dtm)
#sms_dtm_train <- sms_dtm[1:4169, ]
#inspect(sms_dtm_train)
#sms_dtm_test <- sms_dtm[4170:5559, ]
#inspect(sms_dtm_test)
#sms_train_labels <- sms_raw[1:4169, ]$type
#sms_train_labels
#sms_test_labels <- sms_raw[4170:5559, ]$type
install.packages("wordcloud")
library(wordcloud)
wordcloud(sms_corpus_clean,
          min.freq = 50,
          random.order = FALSE)
sms_freq_words<-findFreqTerms(sms_dtm_train, 5)
sms_freq_words #words that are used in atleast 5 SMS
sms_dtm_freq_train<- sms_dtm_train[ ,
                                    sms_freq_words]
inspect(sms_dtm_freq_train)
sms_dtm_freq_test <- sms_dtm_test[ ,
                                   sms_freq_words]
convert_counts <- function(x) {
  x <- ifelse(x > 0, "Yes", "No")
}
sms_train <- apply(sms_dtm_freq_train,
                   MARGIN = 2,
                   convert_counts)
View(sms_train)
sms_test <- apply(sms_dtm_freq_test,
                  MARGIN = 2,
                  convert_counts)
#install.packages("e1071")
library(e1071)
sms_classifier <- naiveBayes(sms_train,
                             sms_train_labels)
sms_test_pred <- predict(sms_classifier,
                         sms_test)
table(sms_test_pred, sms_test_labels)
library(gmodels)
CrossTable(sms_test_pred, sms_test_labels,
           prop.chisq = FALSE, prop.t = FALSE,
           dnn = c('predicted', 'actual'))
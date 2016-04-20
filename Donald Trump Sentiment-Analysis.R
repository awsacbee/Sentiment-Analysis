library(twitteR)
library(ROAuth)
library(RCurl)
library(stringr)
library(tm)
library(ggmap)
library(dplyr)
library(plyr)
library(tm)
library(wordcloud)

list.dirs() 
getwd()

key="hidden"
secret="hidden"
setwd("C:/Users/awelden/Documents/R/Sentiment-Analysis/text_mining_and_web_scraping")

download.file(url="http://curl.haxx.se/ca/cacert.pem",
              destfile="/text_mining_and_web_scraping/cacert.pem",
              method="auto")
authenticate <- OAuthFactory$new(consumerKey=key,
                                 consumerSecret=secret,
                                 requestURL="https://api.twitter.com/oauth/request_token",
                                 accessURL="https://api.twitter.com/oauth/access_token",
                                 authURL="https://api.twitter.com/oauth/authorize")
setup_twitter_oauth(key, secret)
save(authenticate, file="twitter authentication.Rdata")
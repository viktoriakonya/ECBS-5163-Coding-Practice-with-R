
# Print 
print('Hello')

# Create variable
a <- 4
str(a)

# Built-in dataset
mtcars <- mtcars

# Crete string
first_string <- 'Hello'

# Plot
plot(1:10)

# Call
library(ggplot2)
library(tidyverse)
library(data.table)

# Get functions
# ggplot2::


?ggplot()

plot <- mtcars$cyl <- as.factor(mtcars$cyl)
plot(mpg ~ hp , data=mtcars, 
     col=cyl, pch=c(4,6,8)[mtcars$cyl], cex=1.2)
legend("topright", legend=levels(mtcars$cyl),
       pch = c(4,6,8),
       col=levels(mtcars$cyl))
plot

# Wordcloud
library(wordcloud)

wordcloud(c(letters, LETTERS, 0:15), seq(1, 100, len = 80))

?wordcloud


# Random walk simulation

step <- 1000


getwd()
setwd('')


# Read from github
data_git <- read.csv("https://github.com/misrori/aranykezdata/blob/master/data.csv")
data_local <- read.csv('C:/Users/User/Downloads/CEU/2021_Fall/R_practice/Week1/data.csv', header=TRUE, sep = ";")






run <- function(p, lower, upper) {
  values <- c(0)
  current <- 0
  while (current > lower & current < upper) {
    current <- current + ifelse(runif(1) < p, 1, -1)
    values <- c(values, current)
  }
  values
}


N <- 100  # no. of paths to simulate
p <- 0.5 # prob
lower <- -50
upper <- 50
# simulate paths
set.seed(1055)
vlist <- replicate(N, run(p, lower, upper))
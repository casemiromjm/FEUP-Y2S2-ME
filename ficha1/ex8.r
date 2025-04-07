# solution for exercise 8 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
sows <- data$Ex11
sows <- sows[!is.na(sows)]

par(mfrow = c(2,1))

#bar chart
counts <- table(sows)   # frequency table
barplot(counts,
  horiz=FALSE,
  xlab="Litter size"
)

q <- quantile(sows, type=2)
avg <- mean(sows)

# simple function to calculate mode knowing there is a mode
get_mode <- function(v) {
  freq_table <- table(v)
  max_freq <- max(freq_table)

  mode <- names(freq_table)[freq_table == max_freq]

  return(mode)
}

mode <- get_mode(sows)

#boxplot
boxplot(sows, horizontal=TRUE)

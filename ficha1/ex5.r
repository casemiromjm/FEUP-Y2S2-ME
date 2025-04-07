# solution for exercise 5 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
enzyme <- data$Ex6
enzyme <- enzyme[!is.na(enzyme)]    # filter NA values

par(mfrow = c(2, 1))

#histogram with 5 classes

hist( 
  enzyme,
  breaks=c(4,7,10,13,16,19),
  right=FALSE,
  main="",
  xlab="Enzyme activity"
)

#quantiles
q <- quantile(enzyme, type=2, mar=2)

q1 <- sort(enzyme)[ceiling(length(enzyme)/4)]
#q2 = median
q3 <- sort(enzyme)[ceiling(length(enzyme)*0.75)]

#boxplot
boxplot(enzyme, horizontal=TRUE)
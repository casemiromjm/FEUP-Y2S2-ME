# solution for exercise 6 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
trypanosoma <- data$Ex7
trypanosoma <- trypanosoma[!is.na(trypanosoma)]

par(mfrow = c(1,1))

# histogram with 24 classes
classes <- seq(from=14.5, to=38.5, by=1)
hist(trypanosoma,
  main="",
  breaks=classes,
  right=FALSE,
  xlab="length"
)

#hist with 6 classes -> loses data
classes <- seq(from=14.5, to=38.5, by=ceiling((38-15)/6))
hist(
  trypanosoma,
  main="",
  breaks=classes,
  right=FALSE,
  xlab="length"
)

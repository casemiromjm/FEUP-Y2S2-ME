# solution for exercise 3 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
head_circum <- data$Ex4                  # gets column Ex4
head_circum <- head_circum[!is.na(head_circum)]    # filter NA values

# makes it possible to show 2 plots side by side
par(mfrow = c(1, 2))

# dot diagram
stripchart(head_circum, method="stack", pch=20)

# histogram
hist(head_circum, right=FALSE, main="", xlab="Head Circumference")
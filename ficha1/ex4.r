# solution for exercise 4 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
molar_width <- data$Ex5                  # gets column Ex5
molar_width <- molar_width[!is.na(molar_width)]    # filter NA values

# data representation

par(mfrow = c(1, 3))

#histogram
hist(molar_width, right=FALSE, main="", xlab="Molar width")

#boxplot
boxplot(molar_width, ylab="Molar width")

#dot diagram
stripchart(molar_width, method="stack", pch=20, xlab="Molar width")

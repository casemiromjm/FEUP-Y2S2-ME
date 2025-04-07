# solution for exercise 12 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
a <- data$Ex17A
a <- a[!is.na(a)]

b <- data$Ex17B
b <- b[!is.na(b)]

par(mfrow = c(1,1))

#boxplot
boxplot(a, b, names=c("Group A","Group B"))

med_a <- median(a)
med_b <- median(b)

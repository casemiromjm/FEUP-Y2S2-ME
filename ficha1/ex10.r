# solution for exercise 10 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
x <- data$Ex15x
x <- x[!is.na(x)]

y <- data$Ex15y
y <- y[!is.na(y)]

par(mfrow = c(1,1))

# dispersion
plot(x, y)

# pearson cor
pearson <- cor(x, y, method="pearson")
# solution for exercise 2 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
sismic <- data$Ex3                  # gets column Ex3
sismic <- sismic[!is.na(sismic)]    # filter NA values

mean(sismic)
sd(sismic)
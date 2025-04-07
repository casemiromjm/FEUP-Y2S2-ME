# solution for exercise 8 of ficha tp 1

data <- read.csv("DadosFolha1.csv", na.strings = "")
blood_pressure_before <- data$Ex13Antes
blood_pressure_before <- blood_pressure_before[!is.na(blood_pressure_before)]

blood_pressure_after <- data$Ex13Depois
blood_pressure_after <- blood_pressure_after[!is.na(blood_pressure_after)]

par(mfrow = c(2,1))

# diff boxplot
boxplot(blood_pressure_after - blood_pressure_before,
  horizontal=TRUE,
  xlab="Blood Pressure Diff"
)

# line on x=0 for better understanding the results
abline(v=0, col="red")

# dispersion
plot(blood_pressure_before, blood_pressure_after, pch=20)
# pearson cor
pearson <- cor(blood_pressure_before, blood_pressure_after, method="pearson")
# Load Iris dataset
head(iris, 150)

# Extract Sepal Length
xdata = iris$Sepal.Length

# Compute quartiles
MinQ = quantile(xdata, 0)
FQ   = quantile(xdata, 0.25)
SQ   = quantile(xdata, 0.5)
TQ   = quantile(xdata, 0.75)
MaxQ = quantile(xdata, 1)

# Print quartiles one by one
cat("Minimum =", MinQ, "\n")
cat("Lower Quartile =", FQ, "\n")
cat("Median =", SQ, "\n")
cat("Upper Quartile =", TQ, "\n")
cat("Maximum =", MaxQ, "\n")

# Compute all quartiles together
AQ = quantile(xdata, prob=c(0,0.25,0.5,0.75,1))
cat("All Quartiles =", AQ, "\n")

# Summary statistics
summary(xdata)

# Boxplot
boxplot(xdata, main="Interquartile Range for Sepal Length", ylab="Centimetres")

# Compute IQR
as.numeric(quantile(xdata,0.75) - quantile(xdata,0.25))
IQR(xdata)

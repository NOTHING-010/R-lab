# Load Women dataset
head(women, 15)

# Scatter Plot
library(ggplot2)
scatter.smooth(women$height, women$weight,
               main="Scatter Plot",
               xlab="Height", ylab="Weight")

# Covariance calculations
c11 = cov(women$height, women$height)
c12 = cov(women$height, women$weight)
c21 = cov(women$weight, women$height)
c22 = cov(women$weight, women$weight)

# Construct covariance matrix manually
cm1 = matrix(data = c(c11, c12, c21, c22), nrow=2, byrow=TRUE)
print("Covariance Matrix")
print(cm1)

# Full covariance matrix directly
cm2 = cov(women)
print("Covariance Matrix")
print(cm2)

# Correlation coefficients manually
cc11 = cor(women$height, women$height)
cc12 = cor(women$height, women$weight)
cc21 = cor(women$weight, women$height)
cc22 = cor(women$weight, women$weight)

cc1 = matrix(data = c(cc11, cc12, cc21, cc22), nrow=2, byrow=TRUE)
print("Pearson's Correlation Coefficients")
print(cc1)

# Full correlation matrix directly
cc2 = cor(women)
print("Pearson's Correlation Coefficients")
print(cc2)

# Spearman correlation
cc3 = cor(women, method="spearman")
print("Spearman's Correlation Coefficients")
print(cc3)

# Relationship interpretation
if(cc12 > 0) {
  print("Relationship between Women's Weight and Height is Positive")
} else {
  print("Relationship between Women's Weight and Height is Negative")
}

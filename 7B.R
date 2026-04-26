# Load dataset
head(mtcars, 32)

# Covariance
co = cov(mtcars$wt, mtcars$mpg)
print("Covariance")
print(co)

# Pearson Correlation
cc = cor(mtcars$wt, mtcars$mpg)
print("Pearson's Correlation Coefficient")
print(cc)

# Spearman Correlation
ccs = cor(mtcars$wt, mtcars$mpg, method="spearman")
print("Spearman's Correlation Coefficient")
print(ccs)

# Scatter Plot
library(ggplot2)
scatter.smooth(mtcars$wt, mtcars$mpg,
               main="Scatter Plot",
               xlab="Car Weight",
               ylab="Mileage")

# Relationship Interpretation
if(cc > 0) {
  print("Relationship b/w Car Weight and Mileage is Positive")
} else {
  print("Relationship b/w Car Weight and Mileage is Negative")
}

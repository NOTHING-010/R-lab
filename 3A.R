# Create student dataset
sdata <- data.frame(
  sname   = c("Raja","Somu","Roja"),
  srollno = c(101,103,102),
  sage    = c(19,20,18),
  ssex    = c("male","male","female"),
  sbranch = c("CSE","MECH","EEE"),
  m1 = c(90,79,88),
  m2 = c(95,85,90),
  m3 = c(85,25,85),
  m4 = c(70,40,60),
  m5 = c(67,67,89)
)

# Preview dataset
head(sdata)
nrow(sdata)
ncol(sdata)

# Initialize result vector
result <- vector(mode="character", length=0)

# Classify Pass/Fail
for(i in 1:nrow(sdata)) {
  if((sdata$m1[i] > 50) && (sdata$m2[i] > 50) &&
     (sdata$m3[i] > 50) && (sdata$m4[i] > 50) &&
     (sdata$m5[i] > 50)) {
    status <- "Pass"
  } else {
    status <- "Fail"
  }
  result <- append(result, status)
}

# Compute total and percentage
Total <- sdata$m1 + sdata$m2 + sdata$m3 + sdata$m4 + sdata$m5
ptge  <- Total / 5

# Final dataset
tdata <- cbind(sdata, result, Total, ptge)
tdata

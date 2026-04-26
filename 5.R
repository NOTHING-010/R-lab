# Load MTCars dataset
head(mtcars)

# Unique carburetor values
u1 <- unique(mtcars$carb)
cat("Carburetors :", u1, "\n")

# Frequency table of carburetors
t1 <- table(mtcars$carb)

# Bar plot of carburetor frequencies
barplot(t1,
        xlab = "Carburetors",
        ylab = "Frequencies",
        main = "Frequency Distribution of MT Cars' Carburetors")

# Load AirQuality dataset
head(airquality)

# Unique temperature values
u2 <- unique(airquality$Temp)
cat("Air Quality's Temperature :", u2, "\n")

# Frequency table of temperatures
t2 <- table(airquality$Temp)

# Bar plot of temperature frequencies
barplot(t2,
        xlab = "Air Temperatures",
        ylab = "Frequencies",
        main = "Frequency Distribution of Air Temperatures")

# Group temperatures into ranges (9 bins)
t3 <- table(cut(airquality$Temp, 9))

# Bar plot of temperature ranges
barplot(t3,
        xlab = "Range of Air Temperatures",
        ylab = "Frequencies",
        main = "Frequency Distribution of Range of Air Temperatures")

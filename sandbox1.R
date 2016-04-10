# Create a sequence of numbers, and save them as vector "x:"
x <- 1:2000

# Create "y" as a function of "x" and an error term: 
#y <- 20 + 0.6 * x + rnorm(200, sd = 10)  
y <- (x^2)


# Scatterplot of "y" and "x:"
plot(x, y)
plot(x, y, xlim=c(1,2000), ylim=c(1,2000), pch=20, col="navy", main="Regression of Y on X") # Customize plot
#abline(lm(y ~ x), col="red", lwd=3) # Add a regression line
abline(lm(y~x), col="red", lwd=3) # Add a regression line

# Linear (OLS) regression model:
summary(lm(y ~ x))

# Save the "x,y" dataset as CSV file: 
write.csv(data.frame(xval=x, yval=y), file = "my_dataset.csv", row.names = FALSE)


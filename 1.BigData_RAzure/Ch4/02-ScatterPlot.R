# Scatterplots 

# Note: If you have problems with accentuation, please refer to this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting the working directory
# Enclose the working directory you are using on your computer in quotes
# Do not use directories with spaces in the name
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch4")
getwd()

# Defines the data
set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)


# Create Plot
plot(x, y, col = 123, pch = 10, main = "Multi Scatterplot",
     col.main = "red", cex.main = 1.5, xlab = "Independent Variable", 
     ylab = "Dependent Variable")

# Adds another data 
points(z, t, col = "blue", pch = 4)

# Adds another data 
points(y, t, col = 777, pch = 9)

# Create subtitle
legend(-6,5.9, legend = c("Level 1", "Level 2", "Level 3"),
       col = c(123, "blue", 777), pch = c(10,4,9),
       cex = 0.65, bty = "n")





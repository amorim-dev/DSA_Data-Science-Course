# Histograms 

# Note: If you have problems with accentuation, please refer to this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting up the working directory
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch4")
getwd()

# Setting the Data
?cars
View(cars)
dataset = cars$speed

# Building a histogram
?hist
hist(dataset)


# As stated in the help, the breaks parameter can be any of the following:
# A vector for the breakpoints between the cells in the histogram
# A function to calculate the vector of breakpoints
# A single number that represents the number of cells for the histogram
# A string that names an algorithm to calculate the number of cells 
# A function to calculate the number of cells
hist(dataset, breaks = 10, main = "Histogram of Speeds")
hist(dataset, labels = T, breaks = c(0,5,10,20,30), main = "Histogram of Speeds")
hist(dataset, labels = T, breaks = 10, main = "Histogram of Speeds")
hist(dataset, labels = T, ylim = c(0,10), breaks = 10, main = "Histogram of Speeds")


# Adding lines to the histogram
grafico <- hist(dataset, breaks = 10, main = "Histogram of Speeds")

xaxis = seq(min(dataset), max(dataset), length = 10)
yaxis = dnorm(xaxis, mean = mean(dataset), sd = sd(dataset)) # Calculating the normal distribution
yaxis = yaxis*diff(grafico$mids)*length(dataset) # Different between x and y axis

lines(xaxis, yaxis, col = "red")




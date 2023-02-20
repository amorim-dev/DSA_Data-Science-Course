# Bar Plots 

# Note: If you have problems with accentuation, check this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting up the working directory
# Enclose the working directory you are using on your computer in quotes
# Do not use directories with spaces in the name
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch4")
getwd()

?barplot

# Preparing the data - number of marriages in a church in SP
dataset <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
dataset

# Naming Rows and Columns in the Matrix
colnames(dataset) <- c("0","1-150","151-300",">300")
rownames(dataset) <- c("Youth", "Adult", "Elderly")
dataset

# Building the Barplot
barplot(dataset, beside = T) # Beside True we have a bar to each line in each column
barplot(dataset) # Without beside we have a Stacked bar, where each bar has more than one information

# Building the plot - Stacked Bar Plot
# The 3 age groups are represented in the same column for the different quantities
barplot(dataset, col = c("steelblue1", "tan3", "seagreen3"))

# Create a legend for the previous graphic
colors()
?legend
legend("topright", pch = 1, col = c("steelblue1", "tan3", "seagreen3"), legend = c("Youth", "Adult", "Elderly"))

# Now we have a column for each age group, but in the same quantity range
barplot(dataset, beside = T, col = c("steelblue1", "tan3", "seagreen3"))
legend("topright", pch = 1, col = c("steelblue1", "tan3", "seagreen3"), legend = c("Youth", "Adult", "Elderly"))

# With the Transpose of the matrix, we invert the positions between age range and quantity range
t(dataset)
barplot(t(dataset), beside = T, col = c("steelblue1", "tan3", "seagreen3", "peachpuff1"))
legend("topright", pch = 1, col = c("steelblue1", "tan3", "seagreen3", "peachpuff1"), legend = c("0","1-150","151-300",">300"))




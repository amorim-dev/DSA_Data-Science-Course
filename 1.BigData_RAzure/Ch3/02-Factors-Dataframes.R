# Factors and Dataframes - Understanding the order of factors

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# Create vectors
vec1 <- c(1001, 1002, 1003, 1004, 1005)
vec2 <- c(0, 1, 1, 0, 2)
vec3 <- c('green', 'orange', 'blue', 'orange', 'green')

# Merging vectors into a dataframe
df <- data.frame(vec1, vec2, vec3)
df

# Checking eith R categorize the last column as factor
str(df)
# if not I can change with factor function
df$vec3 <- factor(df$vec3)

# Creating a new column and assigning labels
# We transform a column generating a new one
df$cat1 <- factor(df$vec3, labels = c('cor2', 'cor1', 'cor3'))
df
str(df)

# The assigning follow the alphabetic order of the levels 
# we put cor2 to the first, cor1 to the second...:
# Blue <- cor2
# Green <- cor1
# Orange <- cor3

# When you use labels, remember that will attribute in alphabetic order.
df$cat2 <- factor(df$vec2, labels = c('Divorced', 'Married', 'Single'))
df
str(df)
# If the levels not appear in alphabetic order maybe R is using a classification
# In this case that we use order column, what R use to sort is vec2 (0,1,2)
levels(df$cat2)

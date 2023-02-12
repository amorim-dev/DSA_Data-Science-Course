# Factors

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

vec1 <- c('Male', 'Female', 'Female', 'Male', 'Male')
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

#  Nominal categorical variable (It does not have an explicit order)
animals <- c('Zebra', 'Panther', 'Rhino', 'Monkey', 'Tiger')
animals
class(animals)
fac_animals <- factor(animals)
fac_animals
class(fac_animals)
levels(fac_animals)

# Ordinal categorical variable (It have a natural order)(We can order the levels)
# We have here Bachelor first, then Mater, then Doctorate
grade <- c('Master', 'Doctorate', 'Bachelor', 'Master', 'Master')
grade
fac_grade <-factor(grade, order = TRUE, levels = c('Doctorate', 'Master', 'Bachelor'))
fac_grade
levels(fac_grade)

# Summary
summary(fac_grade)
summary(grade)

vec2 <- c('M', 'F', 'F', 'M', 'M', 'M', 'F', 'F')
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c('Female', 'Male') # We can change the name of the levels
fac_vec2
# Its easy to count categorical variables when we transform in factor
summary(fac_vec2) 
summary(vec2)


# We can categorize numeric values
data = c(1,2,2,3,1,2,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data, labels = c("I", "II", "III"))
rdata


# non-ordered factors
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

# Transforming data
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)


# Sorting factors without hierarchy (We can say the hierarchy)
o.set1 <- factor(set1,
                 levels = c("CA", "BA", "AA", "CC", "B"),
                 ordered = TRUE)
o.set1
is.ordered(o.set1)



# Factores and Dataframes
df <- read.csv("ethnicity.csv", sep = ',')
View(df)

# Type of variables in the dataframe
str(df)

# Variables before transformation
levels(df$Ethnicity)
summary(df$Ethnicity)

# Levels of variables
df$Ethnicity <- as.factor(df$Ethnicity)
levels(df$Ethnicity)
summary(df$Ethnicity)
str(df)


# Plot
# Relationship between age and ethnicity
boxplot(df$Age ~ df$Ethnicity, xlab = 'Ethnicity', ylab = 'Age', main = 'Age X Ethnicity')


# Linear regression model (We will see more about it later)
summary(lm(Age ~ Ethnicity, data = df))


# Converting a column in categorical variable and specifying the categories
# We are adding this information in a new column
df
str(df)
df$Marital.Status.cat <- factor(df$Marital.Status, labels = c('Single', 'Married', 'Divorced'))
df
str(df)

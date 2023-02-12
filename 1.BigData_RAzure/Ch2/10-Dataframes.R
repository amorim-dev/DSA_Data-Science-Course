# Data Frames and Operations with Data Frames

# Set WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch2")
getwd()

# Creating  a empty dataframe 
df <- data.frame()
class(df)
df


# Creating empty vectors and create an vector of vectors
names <- character()
ages <- numeric()
itens <- numeric()
codes <- integer()

df <- data.frame(c(names, ages, itens, codes))
df

# Creating vectors
country = c("Portugal", "England", "Ireland", "Egypt", "Brazil")
name = c("Bruno", "Tiago", "Amanda", "Bianca", "Marta")
height = c(1.88, 1.76, 1.53, 1.69, 1.68)
code = c(5001, 2183, 4702, 7965, 8890)


# Creating a data frame of many vectors
research = data.frame(country, name, height, code)
research


# Adding a new columns, a new vector to an existing data frame
eyes = c("green", "blue", "blue","brown", "brown")
research2 = cbind(research, eyes)  #(Union by column)
research2


# Information about the data frame
str(research2)  
dim(research2) # 5 5 (5 rows and 5 columns)
length(research2)


# Get a vector of a dataframes
research2$country
research2$name


# Extracting a unique value
research2[1,1]
research2[3,2]

# Number of columns and rows
nrow(research2)
ncol(research2)


# First elements of the dataframe
head(research2)
head(mtcars) # Dataset came with R language


# Last element of a dataframe
tail(research)
tail(mtcars)


# built-in R Data frames
?mtcars
mtcars
View(mtcars)


# Filter for a subset of data that meets a criterion
research2[height < 1.60]
research2[height < 1.60, c('code', 'eyes')]
research2


# Named DataFrames
names(research2) <- c("Country", "Name", "height", "Code", "Eyes")
research2

colnames(research2) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(research2) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
research2


# Loading a csv file
?read.csv
patients <- data.frame(read.csv(file = 'patients.csv', header = TRUE, sep = ','))


# Viewing dataset
View(patients)
head(patients)
summary(patients) # Like describe in python (Some statistics information)

# Viewing dataset
patients$Diabete
patients$status   # Null because its not with lower s
patients$Status


# Histogram
hist(patients$Idade)

# Cobining dataframes
dataset_final <- merge(research2, patients)
View(dataset_final)
help("merge")

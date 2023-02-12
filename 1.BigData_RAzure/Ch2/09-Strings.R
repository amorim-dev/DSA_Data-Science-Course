# Operation with strings

# Set WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch2")
getwd()

# String
text <- 'This is a string'
text

x = as.character(3.14)
x
class(x)


# concatenating strings
name = 'Nelson'; surname = 'Mandela'
paste(name, surname)
cat(name, surname) 


# Formatting output with placeholder
sprintf('The %s is %d', 'Data Science Academy', 10 )


# Extracting part of the string
text <- 'This is a string!'
substr(text, start = 11, stop = 16)
?substr

# Count the number of characters
nchar(text)


# Changing the capitalization
tolower('Histograms and data elements')
toupper('Histograms and data elements')


# Using stringr (Package to extend some function working with strings)
library(stringr)

# Split string in characters
?strsplit
strsplit('Histograms and data elements', NULL)

# Split string in characters after space (in words)
strsplit('Histograms and data elements', ' ')


# Working with strings
string1 <- c("This is the first part of my string and it will be the first part of my vector",
             "Here my string continues, but it will be transformed into the second vector")
string1
string2 <- c("We need to test other strings = @????!$",
             "Data Analysis in R")
string2

# Adding 2 strings
str_c(c(string1, string2), sep = "")


# Count character in a text
str_count(string2, "s")  # 3 2 (3 times in the first phrase and 2 in the second)

# Finds the first and last position where the character appears in the string
str_locate_all(string2, "Data")
str_locate_all(string2, "s")


# Replaces the first occurrence of a character
str_replace(string2, "\\s", "")  

# Replaces all occurrences of a character
str_replace_all(string2, "\\s", "")


# Detecting patterns in strings
string1 <- '17 jan 2001'
string2 <- '1 jan 2001'
pattern1 <- 'jan 20'
grepl(pattern = pattern1, x = string1)
pattern2 <- 'jan20'
grepl(pattern = pattern2, x = string1)

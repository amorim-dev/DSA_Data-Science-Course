# Packages and installation of packages

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# Search packages loaded by default when you open RStudio
search()


# Install packages
install.packages(c('ggvis', 'tm', 'dplyr')) # I can install a vector of packages
library(ggvis)
library(tm)
library(dplyr)

search()
?require
detach(package:dplyr)


# List packages content
?ls
ls(pos = "package:tm") # position == tm - functions of tm packages
ls(getNamespace("tm"), all.names = TRUE) # To have everything, functions, methods...


# list the functions of a package
lsf.str("package:tm")
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")


# R have some datasets pre installed
library(MASS)
data() # All free available datasets in R language 

?lynx  # I can see what is each dataset
head(lynx)
head(iris)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)

# To allow say the path to the function sum above instead mention the name of the dataset
?attach 
attach(iris)
sum(Sepal.Length)



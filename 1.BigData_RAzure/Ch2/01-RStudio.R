# First steps with R Language

# Setting up working directory
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/3.BigData_RAzure/Ch2")
getwd()

# Session information
sessionInfo()

# Print
print("I'm starting my career path as a data scientist")

# Install packages
install.packages('randomForest')
install.packages('ggplot2')
install.packages('dplyr')
install.packages('devtools')

# Load a package
library(ggplot2)

# Unload a package
detach(package:ggplot2)

# If you know the function name
help(mean)
?mean

# To see more information about the function in a browser
install.packages('sos')
library(sos)
findFn('fread')

# If I do not know the function name
help.search('randomForest')
??matplot
RSiteSearch('matplot')
example('matplot')

# exit RStudio
q()

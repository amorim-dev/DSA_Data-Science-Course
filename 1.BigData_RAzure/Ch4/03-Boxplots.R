# Boxplots 

# Note: If you have problems with accentuation, please refer to this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting up the working directory
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch4")
getwd()

?boxplot
?sleep

# Allows you to use the columns without specifying the dataset name
attach(sleep)
View(sleep)

# Boxplot construction
sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = "Sleep Duration",
                       col.main = "red", ylab = "Hours", xlab = "Drug")

# Average calculation
avg = by(extra, group, mean)

# Adds the mean to the graph 
# We can create layer by layer, add points and lines after create the basic graph
points(avg, col = "red")


# Boxplot horizontal
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T)

horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T,
                            col = c("blue", "red") )



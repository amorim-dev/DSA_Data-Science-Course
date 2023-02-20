# Charts in R - Base Plotting System 

# Note: If you have problems with accentuation, please refer to this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting up the working directory
# Enclose the working directory you are using on your computer in quotes
# Do not use directories with spaces in the name
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch4")
getwd()

# List of loaded base packages
# Are the two packages that contain the base plotting system
search()


# Demo (Demonstration of how to use a package)
# Does not work with all package but with many
demo("graphics")


# Basic Plot
x = 5:7
y = 8:10
plot(x,y)
?plot

height <- c(145, 167, 176, 123, 150)
width <- c(51, 63, 64, 40, 55)

plot(height, width)


# Plotting a Dataframe
?lynx
plot(lynx)
plot(lynx, ylab = "Plots with Dataframes", xlab = "")
plot(lynx, ylab = "Plots with Dataframes", xlab = "Observations")
plot(lynx, main = "Plots with Dataframes", col = 'red')
plot(lynx, main = "Plots with Dataframes", col = 'red', col.main = 52, cex.main = 1.5)

library(datasets)
hist(warpbreaks$breaks)

airquality
transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")


# Specifying the parameters

# col - color of the plot
# lty - line type
# lwd - line width
# pch - symbol on plot
# xlab - x-axis label
# ylab - y-axis label
# las - how axis labels are oriented
# bg - background color
# mfrow - number of plots per line
# mfcool - number of plots per column

# Basic Plot Functions

# plot() - scatterplots
# lines() - adds lines to a graph
# points() - adds points to a graph
# text() - add label to graph
# title() - adds title to chart

# Graph Parameters
?par
par()
par('pch')
par('lty')

x = 2:4
plot(x, pch = "*")

par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue", "red"), legend = c("Var1","Var2"))
par(mfrow = c(1,1))

# Available colors
colors()


# Saving Graphics in png or pdf

# png
png("Graph1.png", width = 500, height = 500, res = 72)

plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Graph generated from Iris")

dev.off()


# pdf
pdf("Graph2.pdf")

plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Graph generated from Iris")

dev.off()


# Extending the plot functions
install.packages('plotrix')
library(plotrix)
?plotrix

par(mfrow = c(1,1), col.axis = "red")
plot(1:6, las = 3, xlab = "lty 1:6", ylab = "", main = "Mais opções ao plot")
ablineclip(v=1, lty=1, col="sienna2", lwd=2)
ablineclip(v=2, lty=1, col="sienna2", lwd=2)
ablineclip(v=3, lty=1, col="sienna2", lwd=2)
ablineclip(v=4, lty=1, col="sienna2", lwd=2)
ablineclip(v=5, lty=1, col="sienna2", lwd=2)
ablineclip(v=6, lty=1, col="sienna2", lwd=2)
ablineclip(v=7, lty=1, col="sienna2", lwd=2)


plot(lynx)
plot(lynx, type="p", main="Type p")
plot(lynx, type="l", main="Type l")
plot(lynx, type="b", main="Type b")
plot(lynx, type="o", main="Type o")
plot(lynx, type="h", main="Type h")
plot(lynx, type="s", main="Type s")
plot(lynx, type="n", main="Type n")


# Two plots together
par(mar=c(4,3,3,3), col.axis="black")

plot(cars$speed, type="s", col="red", bty="n", xlab="Cars ID", ylab="")
text(8, 14, "Velocidade", cex=0.85, col="red") 
par(new=T) 

plot(cars$dist, type="s", bty="n", ann=F, axes=F, col="darkblue")
axis(side=4)
text(37, 18, "Distância", cex=0.85, col="darkblue") 

title(main="Velocidade x Distância")


# Plots from datasets
df <- read.csv('pibpercap.csv', stringsAsFactors = F)
df_1982 <- subset(df, ano == 1982)
plot(expectativa ~ pibpercap, data = df_1982, log = "x")
View(df)

# Names for the columns
mycol <- c(Asia = "tomato", Europe = "chocolate4", Africa = "dodgerblue2", 
           Americas = "darkgoldenrod1", Oceania = "green4")

# Plot
plot(expectativa ~ pibpercap, data = df_1982, log = "x", col = mycol[continente])

# Function for the scale
# You can use min and max to adjust to a precise scale 
mycex <- function(var, r, f = sqrt){
  x = f(var)
  x_scaled = (x - min(x))/(max(x) - min(x))
  r[1] + x_scaled * (r[2] - r[1])
}

# Plot
plot(expectativa ~ pibpercap, data = df_1982, log = "x",
     col = mycol[continente],
     cex = mycex(pop, r = c(0.2, 10))
)



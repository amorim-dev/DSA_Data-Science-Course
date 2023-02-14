# Apply family - An elegant way to make loops

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# apply() - arrays and matrix
# tapply() - the vectors can be split in different subsets
# lapply() - vectors and lists
# sapply() - friendly version of lapply()
# vapply() - similar to sapply, with modified return value
# rapply() - similar to laaply()
# eapply() - generate a list
# mapply() - similar to sapply, multivariate
# by  # Its similar the familly apply


# If you are working with objects:
# List, numeric, character (list, vector) => sapply or lapply
# matrix, data.frame (aggregation by column) => by / tapply
# Operations by line or specific operations => apply

# Using a loop
list1 <- list(a = (1:20), b = (35:67))
list1

# Calculating the total of element in the list with for
value_a = 0
value_b = 0

for (i in list1$a){
  value_a = value_a + i
}

for (j in list1$b){
  value_b = value_b + j
}

print(value_a)
print(value_b)


# Calculating each element of the list with sapply
?sapply
sapply(list1, sum)

# Applying functions with sapply
sapply(list1, mean)

# apply()
?apply

x <- matrix(c(20, 13, 65, 32, 45, 12, 76, 49, 82), nr = 3, byrow = T)
x

apply(x, 1, mean) # mean to each line of the matrix
apply(x, 2, mean) # mean to each row of the matrix
apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply


# Applying apply() to a dataframe
school <- data.frame(Student = c('Bob', 'Teresa', 'Marta', 'Felipe', 'Zacarias', 'Elton'),
                     Physics = c(91, 82, 75, 97, 62, 74),
                     Math = c(99, 100, 86, 92, 91, 87),
                     Chemistry = c(56, 72, 49, 68, 59, 77))

school
school$Math

# Calculating average by student
school$Mean = NA
school

# I do the slice caching all lines and the columns 2,3,4
school$Mean = apply(school[, c(2, 3, 4)], 1, mean)
school
school$Mean = round(school$Mean, 1)
school


# tapply()
?gl
basketball_table <- 
  data.frame(team = gl(5, 5, labels = paste("Team", LETTERS[1:5])),
             player = sample(letters, 25),
             baskets_num = floor(runif(25, min = 0, max = 50)))

View(basketball_table)
summary(basketball_table)


# How to calculate the average by team?
# tapply() vs sqldf
install.packages('sqldf')
library(sqldf)

# We can use sql
sqldf("select team, sum(baskets_num) from basketball_table group by team")

# Or we can use tapply, a elegant way
?tapply
tapply(basketball_table$baskets_num, basketball_table$team, sum)
tapply(basketball_table$baskets_num, basketball_table$team, mean)


# by
?by

dat <- data.frame(species = c(rep(c(1,2,3), each = 5)),
                              petal.length = c(rnorm(5, 4.5, 1),
                                               rnorm(5, 4.5, 1),
                                               rnorm(5, 5.5, 1)),
                              petal.width = c(rnorm(5, 2.5, 1),
                                              rnorm(5, 2.5, 1),
                                              rnorm(5, 4, 1)))

dat$species <- factor(dat$species)
View(dat)

by(dat, dat$species, function(x){
  # Calculate the average petal length for each specie
  mean.pl <- mean(x$petal.length)
})

# lapply()
?lapply

list1 <- list(a = (1:10), b = (45:77))
list1
# The output is different but both function do the same
lapply(list1, sum)  
sapply(list1, sum)

# vapply()
?vapply

# Statistical summary for each element in the list
vapply(list1,
       fivenum,
       c(Min = 0,
         "1stQu." = 0,
         Median = 0,
         "3rd Qu." = 0,
         Max = 0))


# replicate
?replicate
replicate(7, runif(10))


# mapply()
?mapply
mapply(rep, 1:4, 4:1)


# rapply() - Recursive
?rapply

list2 <- list(a = c(1:5), b = c(6:10))
list2

rapply(list2, sum)
rapply(list2, sum, how = 'list')


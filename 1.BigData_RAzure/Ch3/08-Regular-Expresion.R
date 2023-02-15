# Regular expressions

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# grep
# grepl
# sub
# gsub
# regexpr
# gregexpr

str <- c("Regular", "expressions", "in R language",
         "allow us to search for patterns", "and explore text",
         "we can search for patterns in digits",
         "for example",
         "10992451280")

length(str)
str

# grep()
?grep
grep("ex", str, value = F) # False show the number of the element
grep("ex", str, value = T) # True show the element
grep("\\d", str, value = F) # Code to find digits
grep("\\d", str, value = T)


# grepl()
# Difference between grep() is grepl() return a boolean
?grepl
grepl("\\d+", str)
grepl("\\D+", str) # Code to everything that is not digits


# gsub (replace a pattern)
?gsub
gsub("in", "***", str)
gsub("ex", "EX", str, ignore.case = T) 


# sub() (Variation of gsub)
sub("in", "IM", str)


# regexpr() - (show where something appear in the text)
phrase <- "This is a string"
regexpr(pattern = "a", phrase)
# gregexor() - (Variation)
gregexpr(pattern = "a", phrase)

str2 <- c("2678 is greater then 45 - @???!$",
          "Lets write 14 scripts in R")

str2

# gsub() (You can put the pattern together)
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2)

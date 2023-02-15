# Date and time

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# Hour and data of the system
today <- Sys.Date()
today
class(today)
Sys.time()
Sys.timezone()


# Data - Represented by date
# Stored with number of days since January 1, 1970

# Time - Represented by POSIXct
# Stored with number of seconds since January 1, 1970

# Formatting Dates
# %d: day of the month with 2 digits (13)
# %m: month with 2 digits (01)
# %y: year with 2 digits (82)
# %Y: year with 4 digits (1982)
# %A: day of the week (Friday)
# %a: Weekday abbreviated (Fri)
# %B: month (July)
# %b: month abbreviated (Jul)

# Fotmatting Hour
# %H: hour (00:23)
# %M: minute 
# %S: second
# %T: Shortened format to %H:%M:%S
?strptime # To do conversion between date types


# Formatting output - as.Date() (Use to calculate days)
as.Date("2018-04-24")
as.Date("Jun-28-18", format = "%b-%d-%y")
as.Date("28 June, 2018", format = "%d %B, %Y")


# Format() function
Sys.Date()
?format  # Its not to format only date
format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "Today is %A")


# Converting date - as.POSIXct (Use to calculate seconds)
date1 <- "Jun 13, '96 hours:23 minutes:01 seconds:45"
date1_convert <- as.POSIXct(date1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
date1_convert


# Operations with dates (The type of date influence the result)
today_date <- as.Date("2016-06-25", format = "%Y-%m-%d")
today_date
tomorrow <- today_date + 1 # Here 1 represent a day, add a day
tomorrow

my_time <- as.POSIXct("2016-06-25", format = "%Y-%m-%d")
my_time
my_time + 1 # here the number represent the seconds, add a second

today_date - as.Date(my_time) # I have to convert if is different type
today_date - my_time # If not, I have an error


# Converting Data into a specific format
# The vector of numbers can represent the number of days, hours or minutes (depending on what you want to convert)
# The R language takes the starting point as January 1, 1070, and counts the total
# hours, minutes, or seconds, whatever the number vector represents.
# You have to ask what the number represents to convert 
dts = c(1127056501, 1104295502) # This is a number that can be days, minutes or seconds, you have to ask in the source
mydates = dts

# POSIXct, stores the seconds since a specified date, converting numerical values 
# (which can represent hours, minutes or seconds) since January 1st, 1970
# POSIXt is the main class and POSIXct (solve most of the problems, better) and POSIXlt are subclasses. 
# We could use here only POSIXct, which is the subclass (but we can't use only the main class)
class(mydates) = c('POSIXt', 'POSIXct') # I use the mother and son, class and subclass
mydates
class(mydates)

mydates = structure(dts, class = c('POSIXt', 'POSIXct'))
mydates


# ISODate function - To put the function in the standard format
b1 = ISOdate(2011,3,23)
b1
b2 = ISOdate(2012,9,19)
b2
b2 - b1

difftime(b2, b1, units = 'weeks') # the same but I can calculate the number of weeks


# Lubridate package
?lubridate
install.packages("lubridate")
require(lubridate)  # Function to charge the package

ymd("20180604")
mdy("06-04-2018")
dmy("04/06/2018")

# Se that I can specify the timezone
arrival <- ymd_hms("2016-06-04 12:00:00", tz = "Pacific/Auckland")
departure <- ymd_hms("2011-08-10 14:00:00", tz = "Pacific/Auckland")

arrival
departure

second(arrival)
second(arrival) <- 23
arrival
wday(arrival)
wday(arrival, label = TRUE)
class(arrival)


# Creates a project that specifies the start date and the end date
# I can see the interval of two dates
interval(arrival, departure)


tm1.lub <- ymd_hms("2020-05-24 23:55:26")
tm1.lub

year(tm1.lub)
week(tm1.lub)

tm1.dechr <- hour(tm1.lub) + minute(tm1.lub)/60 + second(tm1.lub)/3600
tm1.dechr
force_tz(tm1.lub, "Pacific/Auckland")


# Generating a dataframe of dates
sono <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09", 
                                      "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27", 
                                      "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21", 
                                                                                  "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11", 
                                                                                  "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34, 7.42, 6.45)))
sono
sono$efficiency <- round(sono$sleep.time/(sono$rise.time - sono$bed.time) * 100, 1)
sono


# Generating a plot from dates
par(mar = c(5, 4, 4, 4))
plot(round_date(sono$rise.time, "day"), sono$efficiency, type = "o", col = "blue", xlab = "Morning", ylab = NA)
par(new = TRUE)
plot(round_date(sono$rise.time, "day"), sono$sleep.time/3600, type = "o", col = "red", axes = FALSE, ylab = NA, xlab = NA)
axis(side = 4)
mtext(side = 4, line = 2.5, col = "red", "Sleep Duration")
mtext(side = 2, line = 2.5, col = "blue", "Sleep Efficiency")




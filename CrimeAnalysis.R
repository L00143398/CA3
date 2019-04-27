# Reading in the NI Post Code file into the NIPostCodeSource dataframe.
# I am assuming that the file "NIPostcodes.csv" is in the current working directory
# Please note I forced all blank spaces to "NA" to make it easier to manipulate as I move forward
# This also take care of the Step C action as rather than dropping those rows I replace with NA
# installing the dplyr package and library as it is used within the program.

install.packages("dplyr")
library(dplyr)

NIPostCodeSource <- read.csv(file = "NIPostcodes.csv", header=FALSE, na.strings=c("","NA"))

# The following 3 commands provide the row count, the structure and display the first 10 rows of the dataframe
nrow(NIPostCodeSource)
str(NIPostCodeSource)
head(NIPostCodeSource, n =10L)

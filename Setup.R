##load packages
library(lubridate)

##create data directory
if(!file.exists("./data"))
{
  dir.create("./data")
}

## Create plot directory
if(!file.exists("./plots"))
{
  dir.create("./plots")
}

## Download and unzip
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

zipfile <- "./data/dataset.zip"
outfile <- "./data"

if(!file.exists("./data/household_power_consumption.txt")){
  download.file(url, zipfile, method = "curl")
  unzip(zipfile, exdir = outfile)
  file.remove("./data/dataset.zip")
}

## Read data
power <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
power$Time <- dmy_hms(paste(power$Date, power$Time))
power$Date <- dmy(power$Date)
power_days <- with(power, power[(Date == "2007-02-01"|Date == "2007-02-02"),])



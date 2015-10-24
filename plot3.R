#Read the data
neiData <- readRDS("summarySCC_PM25.rds")
sccData <- readRDS("Source_Classification_Code.rds")
#Select data neeeded
subset <- neiData[neiData$fips == "24510", ] 
#Draw the plot
library(ggplot2)
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "exdata_project2_plot3.png", 
    width = 480, height = 480, 
    units = "px")
g <- ggplot(subset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()
# Read downloaded data as per instructions:
neiData <- readRDS("summarySCC_PM25.rds")
sccData <- readRDS("Source_Classification_Code.rds")

#view data
head(neiData)
head(sccData)

dim(neiData)
dim(sccData)

#Set up parameters and draw the plot

par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "exdata_project2_plot1.png", 
    width = 480, height = 480, 
    units = "px")
totalEmissions <- aggregate(neiData$Emissions, list(neiData$year), FUN = "sum")

plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in the United States from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
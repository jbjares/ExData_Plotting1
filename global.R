library(dplyr)
library(lubridate)

if(!exists("tinyData")){
  tinyData <- NULL
}

loadSuperBow <- function(){
  if(!file.exists("tinyData.csv") || is.null(tinyData)){
    superbowl <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
    
    tinyData <<- superbowl %>% 
      filter(dmy(Date) >= dmy("01/02/2007") & dmy(Date) < dmy("03/02/2007"))
    
    write.table(tinyData, file = "tinyData.csv",row.names=T,col.names=T, sep=";") 
    
    superbowl <- NULL
    
  }
  
}


loadSuperBow()
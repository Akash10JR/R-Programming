library(reshape2)
data("airquality")
melted_data <- melt(airquality, id.vars = "Month")
monthly_avg <- dcast(melted_data, Month ~ variable, mean)
monthly_avg
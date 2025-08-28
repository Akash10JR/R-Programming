data <- mtcars
boxplot(mpg ~ cyl, data=data)
hist(data$mpg)
barplot(table(data$cyl))
plot(data$mpg, type='l')
plot(data$wt, data$mpg)
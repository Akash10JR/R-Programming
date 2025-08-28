library(dplyr)
library(tidyr)
data(iris)
dim(iris)
summary(iris)
sapply(iris[, 1:4], sd)
quantile(iris[, 1:4])
iris_grouped <- iris %>%
  group_by(Species) %>%
  summarise(across(everything(), list(mean = mean, sd = sd)))
iris_pivot <- iris %>%
  pivot_wider(names_from = Species, values_from = c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width), values_fn = list(mean = mean))
iris$Sepal.Length.Category <- cut(iris$Sepal.Length, breaks = c(4, 5, 6, 7, 8), labels = c("Short", "Medium", "Long", "Very Long"))
iris_categorical_grouped <- iris %>%
  group_by(Sepal.Length.Category) %>%
  summarise(count = n())
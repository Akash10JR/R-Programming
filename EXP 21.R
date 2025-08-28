library(dplyr)
library(caret)
data(iris)
set.seed(123)
train_index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]
model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = "binomial")
predictions <- predict(model, test_data, type = "response")
predicted_classes <- ifelse(predictions > 0.5, "versicolor", "setosa") # Adjust based on your classes
confusionMatrix(factor(predicted_classes), test_data$Species)
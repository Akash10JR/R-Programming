data(ChickWeight)
model <- lm(weight ~ Time + Diet, data = ChickWeight)
predictions <- predict(model)
mse <- mean((ChickWeight$weight - predictions)^2)
mse
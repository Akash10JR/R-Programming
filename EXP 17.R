library(ggplot2)
library(dplyr)
data("titanic", package = "titanic")
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  facet_wrap(~ Sex) +
  labs(title = "Survival by Class and Gender", x = "Passenger Class", y = "Count")
ggplot(titanic, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "white") +
  labs(title = "Age Distribution of Passengers", x = "Age", y = "Frequency")
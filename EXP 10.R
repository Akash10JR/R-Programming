exam_data <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  score = c(85, 92, 78, 88),
  attempts = c(1, 2, 1, 3),
  qualify = c(TRUE, TRUE, FALSE, TRUE)
)
print(exam_data)
scores <- exam_data$score
print(scores)
new_row <- data.frame(name = "Eve", score = 90, attempts = 1, qualify = TRUE)
exam_data <- rbind(exam_data, new_row)
exam_data$grade <- ifelse(exam_data$score >= 85, "A", "B")
exam_data <- exam_data[order(exam_data$score, decreasing = TRUE), ]
write.csv(exam_data, "exam_datav.cs", row.names = FALSE)
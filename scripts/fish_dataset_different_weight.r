set.seed(123)

# Same length distribution
length_upstream <- rnorm(50, mean = 28, sd = 3)
length_downstream <- rnorm(50, mean = 28, sd = 3)

# Significantly different weight
weight_upstream <- rnorm(50, mean = 340, sd = 30)
weight_downstream <- rnorm(50, mean = 300, sd = 30)

# Combine data
lake <- c(rep("Upstream", 50), rep("Downstream", 50))
length <- c(length_upstream, length_downstream)
weight <- c(weight_upstream, weight_downstream)

fish_data <- data.frame(
  Lake = lake,
  Length_cm = round(length, 1),
  Weight_g = round(weight, 1)
)

# Export to CSV
write.csv(fish_data, "assets/data/fish_data_weight.csv", row.names = FALSE)

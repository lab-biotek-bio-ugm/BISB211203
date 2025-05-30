set.seed(123)

# Adjusted: smaller difference in means
length_upstream <- rnorm(50, mean = 28, sd = 3)
weight_upstream <- rnorm(50, mean = 330, sd = 35)

length_downstream <- rnorm(50, mean = 26, sd = 3)
weight_downstream <- rnorm(50, mean = 310, sd = 35)

lake <- c(rep("Upstream", 50), rep("Downstream", 50))
length <- c(length_upstream, length_downstream)
weight <- c(weight_upstream, weight_downstream)

fish_data <- data.frame(
  Lake = lake,
  Length_cm = round(length, 1),
  Weight_g = round(weight, 1)
)

# Export to CSV
write.csv(fish_data, "assets/data/fish_data.csv", row.names = FALSE)

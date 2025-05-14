set.seed(123)

# Simulate fish data
length_A <- rnorm(50, mean = 30, sd = 3)
weight_A <- rnorm(50, mean = 350, sd = 40)

length_B <- rnorm(50, mean = 25, sd = 3)
weight_B <- rnorm(50, mean = 280, sd = 35)

lake <- c(rep("Clean", 50), rep("Polluted", 50))
length <- c(length_A, length_B)
weight <- c(weight_A, weight_B)

fish_data <- data.frame(
  Lake = lake,
  Length_cm = round(length, 1),
  Weight_g = round(weight, 1)
)

# Export to CSV
write.csv(fish_data, "../assets/data/fish_data.csv", row.names = FALSE)

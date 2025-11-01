# R Fundamentals Practice Functions
# Author: Bryce Tyre
# Description: Demonstrates core R programming concepts
# Date: 2025-11-01

cat("Starting R Fundamentals Demo...\n\n")

# Function 1: Basic data type demonstration
demonstrate_data_types <- function() {
  num <- 42                     # numeric
  text <- "Hello, R!"           # character
  flag <- TRUE                  # logical
  nums <- c(1, 2, 3, 4, 5)      # numeric vector
  info_list <- list(name="Alice", age=25, passed=flag)  # list
  
  cat("Numeric:", num, "\n")
  cat("Character:", text, "\n")
  cat("Logical:", flag, "\n")
  cat("Vector:", nums, "\n")
  print(info_list)
}

demonstrate_data_types()

# Function 2: Loop through list and print values
loop_through_list <- function() {
  fruits <- list("Apple", "Banana", "Cherry", "Mango")
  
  cat("\nLooping through fruits:\n")
  for (item in fruits) {
    cat("- ", item, "\n")
  }
}

loop_through_list()

# Function 3: Create and analyze a dataframe
analyze_dataframe <- function() {
  # Create a simple dataframe
  students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "Diana"),
    Age = c(20, 22, 19, 21),
    Score = c(85, 90, 78, 92),
    Passed = c(TRUE, TRUE, FALSE, TRUE)
  )
  
  cat("\nStudent Data:\n")
  print(students)
  
  # Compute summary statistics
  cat("\nAverage Score:", mean(students$Score), "\n")
  
  # Filter passing students
  passing <- students[students$Passed == TRUE, ]
  cat("\nPassing Students:\n")
  print(passing)
}

analyze_dataframe()

# Function 4: Combine results from multiple dataframes
combine_dataframes <- function() {
  df1 <- data.frame(ID=1:3, Value=c(10, 20, 30))
  df2 <- data.frame(ID=4:6, Value=c(40, 50, 60))
  
  all_dfs <- list(df1, df2)
  
  cat("\nCombining dataframes using a loop:\n")
  combined <- data.frame()
  
  for (d in all_dfs) {
    combined <- rbind(combined, d)
  }
  
  print(combined)
}

combine_dataframes()

# Function 5: Work with a CSV file (Stretch Challenge)
work_with_csv <- function() {
  cat("\n--- Working with CSV File ---\n")
  
  # Create a small dataframe
  data <- data.frame(
    Product = c("Apples", "Bananas", "Cherries"),
    Quantity = c(10, 20, 15),
    Price = c(1.2, 0.8, 2.5)
  )
  
  # Save dataframe to CSV
  write.csv(data, "products.csv", row.names = FALSE)
  cat("CSV file 'products.csv' created successfully!\n")
  
  # Read it back in
  loaded_data <- read.csv("products.csv")
  cat("Data read from CSV:\n")
  print(loaded_data)
  
  # Do something simple with it
  total_value <- sum(loaded_data$Quantity * loaded_data$Price)
  cat("Total inventory value: $", total_value, "\n")
}

work_with_csv()

cat("\n--- R Fundamentals Practice Complete ---\n")
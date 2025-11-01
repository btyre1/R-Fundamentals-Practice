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





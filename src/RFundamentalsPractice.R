# R Fundamentals Practice Functions
# Author: Bryce Tyre
# Description: A simple set of R functions that show off core programming basics
# Date: 2025-11-01

cat("\nStarting R Fundamentals Demo...\n\n")

# Function 1: Basic data type demonstration
# Shows off different types of data R can handle and prints them to the console
demonstrate_data_types <- function() {
  num <- 42                     # numeric
  text <- "Hello, R!"           # character (string)
  flag <- TRUE                  # logical (boolean)
  nums <- c(1, 2, 3, 4, 5)      # numeric vector
  info_list <- list(name="Alice", age=25, passed=flag)  # simple list mixing types
  
  # Print out each type so we can see them in action
  cat("Numeric:", num, "\n")
  cat("Character:", text, "\n")
  cat("Logical:", flag, "\n")
  cat("Vector:", nums, "\n")
  print(info_list)   # lists print differently than vectors
}

# Call the first function to run it
demonstrate_data_types()

# Function 2: Loop through list and print values
# Uses a for-loop to go through a list and print each element
loop_through_list <- function() {
  fruits <- list("Apple", "Banana", "Cherry", "Mango") # make a simple list
  
  cat("\nLooping through fruits:\n")
  for (item in fruits) {  # loop through each fruit
    cat("- ", item, "\n")
  }
}

# Run the loop function
loop_through_list()

# Function 3: Create and analyze a dataframe
# Builds a dataframe, does some analysis, and prints filtered results
analyze_dataframe <- function() {
  # Create a mini dataset of student info
  students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "Diana"),
    Age = c(20, 22, 19, 21),
    Score = c(85, 90, 78, 92),
    Passed = c(TRUE, TRUE, FALSE, TRUE)
  )
  
  cat("\nStudent Data:\n")
  print(students)
  
  # Calculate the average score
  cat("\nAverage Score:", mean(students$Score), "\n")
  
  # Filter out only the students who passed
  passing <- students[students$Passed == TRUE, ]
  cat("\nPassing Students:\n")
  print(passing)
}

# Run the dataframe analysis
analyze_dataframe()

# Function 4: Combine results from multiple dataframes
# Loops through multiple dataframes, merges them, and prints the result
combine_dataframes <- function() {
  df1 <- data.frame(ID=1:3, Value=c(10, 20, 30)) # first small dataframe
  df2 <- data.frame(ID=4:6, Value=c(40, 50, 60)) # second small dataframe
  
  all_dfs <- list(df1, df2) # store both in a list
  
  cat("\nCombining dataframes using a loop:\n")
  combined <- data.frame() # empty dataframe to hold results
  
  # Loop through each dataframe in the list and stack them together
  for (d in all_dfs) {
    combined <- rbind(combined, d)
  }
  
  print(combined)
}

# Run the dataframe combiner
combine_dataframes()

# Function 5: Work with a CSV file (Stretch Challenge)
# Creates a dataframe, saves it to CSV, reads it back, and calculates total value
work_with_csv <- function() {
  cat("\n--- Working with CSV File ---\n")
  
  # Create a simple dataset for products
  data <- data.frame(
    Product = c("Apples", "Bananas", "Cherries"),
    Quantity = c(10, 20, 15),
    Price = c(1.2, 0.8, 2.5)
  )
  
  # Write the dataframe to a CSV file (no row numbers)
  write.csv(data, "products.csv", row.names = FALSE)
  cat("CSV file 'products.csv' created successfully!\n")
  
  # Read the file back into R
  loaded_data <- read.csv("products.csv")
  cat("Data read from CSV:\n")
  print(loaded_data)
  
  # Do a simple calculation using the data
  total_value <- sum(loaded_data$Quantity * loaded_data$Price)
  cat("Total inventory value: $", total_value, "\n")
}

# Run the CSV demo
work_with_csv()

cat("\n--- R Fundamentals Practice Complete ---\n")
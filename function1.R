# Creating a function
# This function accepts a vector
# and calculates the percentage value for
# each element
add_percent <- function(x, multiplier=1, no_digits=5)
{
  percent <- round( (x * 1)/100, digits = no_digits)
  result <- paste(percent, "%", sep = "")
  #Return the calculation, Note this is optional
  #Since R returns the value of the last line of code
  return(result)
}
sample_vector <- c(0.458, 1.6653, 0.83112)
updated_vector <- add_percent(sample_vector)
updated_vector
# Adding an extra arguments in the function
new_function <- function(arg1, multiplier, no_of_digits)
{
  percent <- round(arg1 * multiplier, no_of_digits)
  result <- paste(percent, "%", sep = "")
  #Return the calculation, Note this is optional
  #Since R returns the value of the last line of code
  return(result)
}
sample_vector <- c(0.458, 1.6653, 0.83112)
updated_vector <- new_function(sample_vector, multiplier = 100, no_of_digits = 1)
updated_vector



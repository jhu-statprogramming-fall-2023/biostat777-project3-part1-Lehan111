#' Calculate the sample standard deviation
#'
#' @details This function calculate the sample standard deviation
#'
#' @param x a vector of numbers of length N
#'
#' @return the sample sd of x
#'
#' @examples
#' a <- c(1,2,3,4,5)
#' sample_sd(a)
#'
sample_sd <- function(x) {
  if (length(x) == 0) {
    stop("x must have a length greater than 0")
  }

  result <- 0
  for (i in x) {
    result <- result + (i - sample_mean(x)) ^ 2
  }
  result <- sqrt(result/(length(x) - 1))
  return(result)
}

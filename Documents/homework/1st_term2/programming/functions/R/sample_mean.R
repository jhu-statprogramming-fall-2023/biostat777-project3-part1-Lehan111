#' Calculate the sample mean
#'
#' @details This function calculate the sample mean
#'
#' @param x a vector of numbers of length N
#'
#' @return the sample mean of x
#'
#' @examples
#' a <- c(1,2,3,4,5)
#' sample_mean(a)
#'
sample_mean <- function(x) {
  if (length(x) == 0) {
    stop("x must have a length greater than 0")
  }

  result <- 0
  for (i in x){
    result <- result + i
  }
  result <- result/length(x)
  return(result)
}

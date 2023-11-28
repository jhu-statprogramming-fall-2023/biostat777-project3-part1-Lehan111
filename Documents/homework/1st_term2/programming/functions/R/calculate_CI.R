#' Calculate the confidence intervals
#'
#' @details This function calculate the confidence intervals
#'
#' @param x a vector of numbers of length N
#'
#' @return the sample CI of x
#'
#' @export
#'
#' @examples
#' a <- c(1,2,3,4,5)
#' calculate_CI(a)
#'
calculate_CI <- function(x, conf = 0.95) {
  if (length(x) == 0) {
    stop("x must have a length greater than 0")
  }

  standard_error <- sample_sd(x) / sqrt(length(x))
  margin_error <- qt((1 + conf) / 2, df = length(x) - 1) * standard_error
  lower_bound <- sample_mean(x) - margin_error
  upper_bound <- sample_mean(x) + margin_error
  result <- c(lower_bound, upper_bound)
  names(result) <- c("lower_bound", "upper_bound")
  return(result)
}

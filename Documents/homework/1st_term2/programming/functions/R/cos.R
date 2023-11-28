#' Compute the cosine
#'
#' Compute the cosine of a number using the truncated series expansion
#'
#' @details This function compute the cosine of a number
#'
#' @param x numeric, the number to be transformed
#' @param k integer, the number of terms to be used in the series expansion beyond the constant 1. The value of k is always >= 1.
#'
#' @return the cosine value of input number
#'
#' @export
#'
#' @examples
#' fn_cos(1,5)
#'
fn_cos <- function(x, k) {
  if (!is.numeric(x)) {
    stop("x must be single numeric value")
  }

  if (length(k) != 1 || k < 1) {
    stop("k must >= 1")
  }

  result <- 1
  for (i in 1:k) {
    result <- result + ((-1)^i * x^(2*i)) / factorial(2*i)
  }
  return(result)
}

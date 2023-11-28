make_ci_class <- function(lower_bound, upper_bound, observations) {
  structure(
    list(lower_bound = lower_bound, upper_bound = upper_bound, observations = observations),
    class = "ci_class"
  )
}

print.ci_class <- function(x) {
  cat("a ci_class with", length(x$observations), "observations")
}

calculate_CI <- function(x, conf = 0.95) {
  if (length(x) == 0) {
    stop("x must have a length greater than 0")
  }

  if (is.list(x) == TRUE) {
    x = x$observations
  }

  standard_error <- sample_sd(x) / sqrt(length(x))
  margin_error <- qt((1 + conf) / 2, df = length(x) - 1) * standard_error
  lower_bound <- sample_mean(x) - margin_error
  upper_bound <- sample_mean(x) + margin_error

  # Create an instance of ci_class
  cat("lower_bound upper_bound\n")
  cat(lower_bound, upper_bound)
}


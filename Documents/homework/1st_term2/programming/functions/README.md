# R package

Author: Lehan Xiao

## Description

This package can be used to calculate cosine, sine, and confidence intervals.

## Exported Functions

### 1. `fn_cos()`

Description: Compute the cosine of a number using the truncated series expansion.

### 2. `fn_sin()`

Description: Compute the sine of a number using the truncated series expansion.

### 3. `calculate_CI()`

Description: A function calculate the confidence intervals.

## Example

Here is an example with one of the functions:

```
set.seed(1234)
x <- rnorm(100)
result <- calculate_CI(x)
print(result)
```

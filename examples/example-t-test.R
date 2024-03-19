x <- na.omit(airquality$Temp[which(is.na(airquality$Solar.R))])
y <- na.omit(airquality$Temp[which(!is.na(airquality$Solar.R))])

x_mean_diff <- (x - (sum(x) / length(x)))^2
sum_x_mean_diff <- sum(x_mean_diff)
s_x <- sqrt((1 / length(x)) * sum_x_mean_diff)
se_x <- s_x / sqrt(length(x))

y_mean_diff <- (y - (sum(y) / length(y)))^2
sum_y_mean_diff <- sum(y_mean_diff)
s_x <- sqrt((1 / length(y)) * sum_y_mean_diff)
se_y <- s_x / sqrt(length(y))

numerator <- mean(x) - mean(y)
denominator <- sqrt(se_x + se_y)

numerator / denominator

## eventually:
var_missing <- airquality$Solar.R
var_interest <- airquality$Temp
which_missing <- which(is.na(var_missing))
which_complete <- which(!is.na(var_missing))

var_interest_miss <- var_interest[which_missing]
var_interest_complete <- var_interest[which_complete]

mean(var_interest_miss)
mean(var_interest_complete)

result <- t.test(var_interest_miss, y = var_interest_complete)

result


## Even more eventually
missingness_impact <- function(when_missing, is_different){
  when_missing_index <- which(is.na(when_missing))
  when_complete_index <- which(!is.na(when_missing))
  
  is_different_miss <- is_different[when_missing_index]
  is_different_complete <- is_different[when_complete_index]
  
  result <- t.test(is_different_miss, y = is_different_complete)
  
  result
  
}

# easily facilitating exploration

missingness_impact(
  when_missing = airquality$Solar.R,
  is_different = airquality$Temp
)

missingness_impact(
  when_missing = airquality$Solar.R,
  is_different = airquality$Temp
)

x <- na.omit(airquality$Solar.R[which(is.na(airquality$Ozone))])
y <- na.omit(airquality$Solar.R[which(!is.na(airquality$Ozone))])

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
var_missing <- airquality$Ozone
var_interest <- airquality$Solar.R
which_missing <- which(is.na(var_missing))
which_complete <- which(!is.na(var_missing))

var_interest_miss <- var_interest[which_missing]
var_interest_complete <- var_interest[which_complete]

result <- t.test(var_interest_miss, y = var_interest_complete)

result

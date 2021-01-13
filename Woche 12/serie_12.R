# Serie12

# Aufgabe 12.1
library(MASS)
head(Boston)
attach(Boston)

# a
fit <- lm(medv ~ lstat + age)
summary(fit)

# b
fit_ <- lm(medv ~ ., data = Boston)
summary(fit_)

# d
fit__ <- lm(medv ~ lstat + age + lstat*age)
summary(fit__)


# Aufgabe 12.2
library(ISLR)
attach(Auto)
head(Auto)

Auto.1 <- within(Auto, rm(name))

# a
pairs(Auto.1, col = "darkseagreen")

# b
round(cor(Auto.1), 2)

# c
fit <- lm(mpg ~ ., data = Auto.1)
summary(fit)

# d
fit_ <- lm(mpg ~ weight * year, data = Auto.1)
summary(fit_)






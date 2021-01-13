# Serie13

# Aufgabe 13.1
library(ISLR)
attach(Carseats)

# a
head(Carseats)
?Carseats

# b
fit <- lm(Sales ~ Price + Urban + US)
summary(fit)

# f
fit_ <- lm(Sales ~ Price + US)
summary(fit_)


# Aufgabe 13.2
library(ISLR)
attach(Auto)
head(Auto)

Auto.1 <- within(Auto, rm(name))

# a
library(leaps)
reg <- regsubsets(mpg ~ ., data = Auto.1, method = "forward")
reg.sum <- summary(reg)
reg.sum
reg.sum$which


# b
reg <- regsubsets(mpg ~ ., data = Auto.1, method = "backward")
reg.sum <- summary(reg)
reg.sum$which


?add1



# Serie11

# Aufgabe 11.1
library(ISLR)

# a
head(Auto)
?Auto

# b
mpg = B_0 + B_1 * horsepower

# c
fit <- lm(Auto$mpg ~ Auto$horsepower)
summary(fit)

confint(fit)

# d
plot(Auto$horsepower, Auto$mpg, pch = 16, col = "lightskyblue")
abline(lm(Auto$mpg ~ Auto$horsepower), col = "orange")


# Aufgabe 11.2
library(MASS)

# a
?Boston

# b
head(Boston)
colnames(Boston)

# c
attach(Boston)

# d
# i
medv = B_0 + B_1 * lstat

# ii
lm.fit <- lm(medv ~ lstat)
summary(lm.fit)

# e
names(lm.fit)

# f
coef(lm.fit)

# g
confint(lm.fit)

# h
plot(lstat, medv, col ="darkseagreen", pch=20)
abline(lm.fit, col="orange", lwd = 3)








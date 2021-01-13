# Serie9

# Aufgabe 9.1
wine <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)

qnorm(0.05, mean=70, sd=1.5/(sqrt(12)))

mean(wine)

pnorm(70.25, mean=70, sd=1.5/(sqrt(12)))


# Aufgabe 9.2


# a
t.test(wine, mu=70, alternative = "less")


# Aufgabe 9.3


bread <- c(46, 48, 52, 49, 46, 51, 52, 47, 49, 44, 48, 51, 49, 50, 53, 47)
# a
qnorm(0.05, mean=50, sd=3/sqrt(16))
mean(bread)

pnorm(mean(bread), mean=50, sd=3/sqrt(16))

# b
qnorm(0.05, mean=50, sd=3/sqrt(100))
mean(bread)

pnorm(mean(bread), mean=50, sd=3/sqrt(100))

# c
t.test(bread, mu=50, alternative = "less")


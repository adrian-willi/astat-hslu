# Serie5

# Aufgabe 5.5
x <- 2:12
p <- c(1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1) / 36

# Erwartungswert
E <- sum(x*p)
E

# Varianz
V <- sum((x-E)^2*p)
V

# Standardabweichung
Sd <- sqrt(V)
Sd

# Wenn wir also sehr viele Male werfen, dann weichen wir im Durchschnitt 2.41 ab vom Erwartungswert 7
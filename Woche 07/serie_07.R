# Serie7

# Aufgabe 7.1
# a

# grösser als 1.85m
1 - pnorm(q=185, mean=180, sd=7.4)

# zwischen 1.70m und 1.80m
pnorm(q=180, mean=180, sd=7.4) - pnorm(170, 180, 7.4)

# b - oberes und unters Quartil gesucht
qnorm(p=c(0.25, 0.75), mean=180, sd=7.4)

# c - oberstes 5% gesucht
qnorm(p=0.95, mean=180, sd=7.4)

# Aufgabe 7.2
# a

# weniger als 2.5kg ist
pnorm(q=2.5, mean=4, sd=1.25)

# mehr als 5kg
1 - pnorm(q=5, mean=4, sd=1.25)

# b
pnorm(q=4.5, mean=4, sd=1.25)-pnorm(q=3, mean=4, sd=1.25)

# c - oberste 2% gesucht
qnorm(p=0.98, mean=4, sd=1.25)

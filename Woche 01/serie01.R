# Aufgabe 1.1
x <- c(4,2,1,3,3,5,7)
x[3]
x[c(1,4)]
length(x)
x+2
sum(x+2)
x <= 3
x[x <= 3] #gibt die Werte, die kleiner oder gleich 3 sind aus
sort(x)
order(x)
x[4] <- 8

# Aufgabe 1.2
fahrenheit <- c(51.9, 51.8, 51.9, 53)
celsius <- 5/9 * (fahrenheit -32)
celsius
fahrenheit2 <- c(48, 48.2, 48, 48.7)
diff <- (fahrenheit - fahrenheit2)
diff

# Aufgabe 1.3
weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
bmi <- weight/height^2
bmi

# Aufgabe 1.4
# a)
seq(1,10, by=0.5)
seq(3,10,length.out = 5)
# b)
x <- c(4, 10, 3, NA, NA, 1, 8)
mean(x) #macht keine Sinn
mean(x, na.rm = TRUE)

sort(x)
sort(x, decreasing = TRUE)
sort(x, decreasing = TRUE, na.last = TRUE)
sort(x, decreasing = TRUE, na.last = FALSE)

order(x)
x


# c)
z <- c(4,2,8,9,7,5,2,1)
plot(z)
# type gibt den Linientyp an, lty gibt den Linientyp für durchgezogene Linien vor
plot(z,
     type = "l",
     col = "blue",
     lty = 2,
     main = "Haupttitel",
     xlab = "Ein paar Zahlen",
     ylab = "Andere Zahlen"
)
# abline(a = NULL, b = NULL, h = NULL, v = NULL, reg = NULL, coef = NULL, untf = FALSE, ...)
abline(v = 3, col = "green", lty = 1)
abline(h = 4, col = "red", lty = 3)
abline(a = 1, b = 2, col = "brown", lty = 5) # y = 2x +1

# Aufgabe 1.5

setwd("C:/R Workspace/Woche 1")
data <- read.csv("weather.csv")
data[2,3]
data[4,] # Der erste Wert von data[.../...] bezieht sich immer auf die Zeile 
data[, c("Luzern", "Zurich")]

data1 <- data[, c("Luzern", "Zurich")]
write.csv(data1, "weather2.csv", row.names = FALSE)
data2 <- read.csv("weather2.csv")
data2

colnames(data)[3]

colnames(data)[2] <- "Genf"
data


data3 <- data[order(data[, "Zurich"]), ] # sortiert Werte basierend auf den Werten von Zurich
data3

# Aufgabe 1.6
d.fuel <- read.table(file = "./d.fuel.dat", header = T, sep = ",")
d.fuel

d.fuel[5,]

d.fuel[1:5,]
# oder
head(d.fuel)

d.fuel[c(1:3, 57:60),]

mean(d.fuel[,3])

mean(d.fuel[7:22,3])
# oder
mean(d.fuel[7:22, "mpg"])

t.kml <- d.fuel[, "mpg"] * 1.6093/3.789
t.kg <- d.fuel[, "weight"] * 0.45359

mean(t.kml)
mean(t.kg)

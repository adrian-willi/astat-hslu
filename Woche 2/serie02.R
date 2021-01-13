# Serie2

# Aufgabe 2.1

winner <- c(191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177,
            182, 182, 193, 183, 179, 179, 175)

opponent <- c(165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183,
              185, 180, 180, 182, 178, 178, 173)
# a
length(winner)
length(opponent)

# b
winner[6:10]

# c
winner[c(3,5, 10:12)]

# d 
winner[6:7] <- 189

# e - true
size_winner <- mean(winner)
size_opponent <- mean(opponent)

# f
difference <- size_winner - size_opponent
difference

# g
var(winner)
sd(winner)

# h TODO
winner.var <- sum((winner - mean(winner))^2) /(length(winner)-1)
winner.var

winner.sd <- sqrt(winner.var)
winner.sd


# Aufgabe 2.2

noten <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)

# a
median(noten)
noten_sorted <- sort(noten)
noten_sorted[1] <- 1
noten_sorted[2] <- 1
noten_sorted[3] <- 1.1
median(noten_sorted)

# b - beim veränderten Datensatz hat es nun Ausreisser
boxplot(noten, noten_sorted,
        xlab = "Noten",
        col = c("orange", "lightblue")
)
axis(side = 1, at = c(1, 2), labels = c("Noten", "Noten1"))


# Aufgabe 2.3

# a
setwd("C:/R Workspace/Woche 2")
mannfrau <- read.csv("mannfrau.csv")

head(mannfrau)

# b
alter.mann <- mannfrau[, 1]
alter.frau <- mannfrau[, 3]
boxplot(alter.mann - alter.frau,
        col="orange")

# c
"
Der Median ist 2, somit ist die Altersdifferenz bei der Hälfte mehr und der
anderen weniger als 2 Jahre

Der maximale Unterschied ist 20 Jahre und das Minimum -10. Dh. eine Frau ist 10 
Jahre älter als ihr MAnn
"

# Aufgabe 2.4
head(InsectSprays)
tapply(InsectSprays[, "count"], InsectSprays[, "spray"], FUN = mean)

# oder
tapply(InsectSprays$count, InsectSprays$spray, mean)

# oder
attach(InsectSprays)
tapply(count, spray, mean)

boxplot(count ~ spray,
        data = InsectSprays,
        col=c("orange", "blue", "darkseagreen", "deeppink",
              "brown", "aquamarine")
)

# oder

boxplot(count ~ spray,
        col=c("orange", "blue", "darkseagreen", "deeppink",
              "brown", "aquamarine")
)

# Aufgabe 2.5

diet <- read.csv("Diet.csv")
head(diet)

diet$weight.loss <- diet$weight6weeks - diet$pre.weight
head(diet)

tapply(diet$weight.loss, diet$Diet, mean)

boxplot(weight.loss ~ Diet,
        data = diet,
        col = c("orange", "darkseagreen", "aquamarine")
)

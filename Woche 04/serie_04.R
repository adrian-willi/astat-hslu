# Serie4 - Serie3 kopiert, da benötigt 
# Für Serie 4 Korrelation jeweils berechnen

# Aufgabe 3.1
setwd("C:/R Workspace/Woche 3")

# a

# Datensatz einlesen
geysir <- read.table("geysir.dat", header = TRUE)

# 4 Graphiken im Graphikfenster
par(mfrow = c(2,2))
hist(geysir[, "Zeitspanne"])
hist(geysir[, "Zeitspanne"], breaks = 20)
hist(geysir[, "Zeitspanne"], breaks = seq(41, 96, by = 11))

# Bei Hist 1 und 2 gibt es zwei Peaks. Das nennt man auch bimodal. 
# Beim dritten Hist ist die Spanne ungünstig gewählt!


# b

hist(geysir[, "Eruptionsdauer"])
# Wiederum eine bimodale Verteilung (2 Peaks). Achtung, muss aber keinen kausalen Zusammenhang haben.


# -> Aufgabe 4
plot(geysir[, "Zeitspanne"], geysir[, "Eruptionsdauer"],
     pch=19,
     col="darkseagreen4")

abline(lm(geysir[, "Eruptionsdauer"] ~ geysir[, "Zeitspanne"]),
       col="orange")

cor(geysir[, "Zeitspanne"], geysir[, "Eruptionsdauer"])
# Korrelationskoeffizient ist nahe bei 1. Somit ist die Punktewolke steigend und annähernd linear



# Aufgabe 3.2
# a
setwd("C:/R Workspace/Woche 2")

mannfrau <- read.csv("mannfrau.csv")
head(mannfrau)

# b

groesse.mann <- mannfrau[, 2]
groesse.frau <- mannfrau[, 4]

plot(groesse.mann, groesse.frau,
     xlab = "Grösse Mann",
     ylab = "Grösse Frau",
     col = "blue",
     pch = 16
)
abline(lm(mannfrau$groesse.frau~mannfrau$groesse.mann),
       lwd = 3,
       col = "seagreen"
)

# Daten sind ziemlich verteilt, aber leicht ansteigend. Also heiraten grössere Frauen eher grössere Männer.

# Aufgabe 4 - Correlation
cor(groesse.mann, groesse.frau)



# c

lm(mannfrau$groesse.frau~mannfrau$groesse.mann)

# y = 110.44 + 0.29x

# d
# Punkte über der Linie sind Frauen, die grösser als ihre Männer sind


# Aufgabe 3.3

# a
setwd("C:/R Workspace/Woche 3")

income <- read.table(file="income.dat", header=TRUE)
head(income)

plot(income$AFQT,
     income$Income2005,
     type = "p",
     xlab = "IQ",
     ylab = "Einkommen",
     col = "lightblue"
)

abline(lm(income$Income2005 ~ income$AFQT),
       col = "orange",
       lwd = 3)

cor(income$AFQT,
    income$Income2005
    )

plot(income$Educ,
     income$Income2005,
     type = "p",
     xlab = "IQ",
     ylab = "Einkommen",
     col = "lightblue"
)

abline(lm(income$Income2005 ~ income$Educ),
       col = "orange",
       lwd = 3)

cor(income$Educ, income$Income2005)

# b

lm(income$Income2005 ~ income$Educ)
# y = -40200 + 6451x


# Aufgabe 3.4
# a

head(anscombe)
par(mfrow=c(2,2))

plot(anscombe$x1, anscombe$y1)
reg <- lm(anscombe$y1 ~ anscombe$x1)
abline(reg)

cor(anscombe$x1, anscombe$y1)

plot(anscombe$x2, anscombe$y2)
reg <- lm(anscombe$y2 ~ anscombe$x2)
abline(reg)

cor(anscombe$x2, anscombe$y2)

plot(anscombe$x3, anscombe$y3)
reg <- lm(anscombe$y3 ~ anscombe$x3)
abline(reg)

cor(anscombe$x3, anscombe$y3)


plot(anscombe$x4, anscombe$y4)
reg <- lm(anscombe$y4 ~ anscombe$x4)
abline(reg)

cor(anscombe$x4, anscombe$y4)


# Datensätze sind zwar sehr unterschiedlich, aber die Geraden sind fast identisch. Zeigt, dass eine grafische Betrachtung zwingend ist, um einen besseren Überblick zu erhalten.
# Korrelation ist fast identisch

# b
lm(anscombe$y1 ~ anscombe$x1)
lm(anscombe$y2 ~ anscombe$x2)
lm(anscombe$y3 ~ anscombe$x3)
lm(anscombe$y4 ~ anscombe$x4)
# siehe Aussagen oben!

# ---------------------------- Aufgaben Serie4 ---------------------------------

# Aufgabe 4.2

# a
t.x <- (-10:10)
t.x1 <- 0:10
t.y <- t.x^2
t.y1 <- t.x1^2

# b
par(mfrow=c(1,2))
plot(t.x, t.y, col = "darkseagreen4", pch = 19)
plot(t.x1, t.y1, col = "darkseagreen4", pch = 19)

# c
cor(t.x, t.y)
cor(t.x1, t.y1)

# Daten liegen beim ersten symmetrisch zur Achse, deshalb ist cor = 0
# Daten liegen auf der Achse, deshalb ist Korrelation hoch, obwohl die Daten keine lineare Beziehung aufweisen

# Restlich Aufgaben auf Papier



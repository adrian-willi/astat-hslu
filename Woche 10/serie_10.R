# Serie10

# Aufgabe 10.1


# Aufgabe 10.2

# b
x <- c(120, 265, 157, 187, 219, 288, 156, 205, 163)
y <- c(127, 281, 160, 185, 220, 298, 167, 203, 171)

t.test(x, y, paired = T, alternative = "less")


# Aufgabe 10.3

# c
setwd("C:/R Workspace/Woche 10")
jackals <- read.table(file = "jackals.txt", header = TRUE)
jackals

t.test(jackals[, "M"], jackals[, "W"])


# d
wilcox.test(jackals[, "M"], jackals[, "W"])


# Aufgabe 10.4

rind <- c(186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111,
          141, 153, 190, 157, 131, 149, 135, 132)
chicken <- c(129, 132, 102, 106, 94, 102, 87, 99, 170, 113, 135, 142, 86,
             143, 152, 146, 144)


# d
mean(rind)
mean(chicken)


# e
wilcox.test(rind, chicken, paired=FALSE)


# Aufgabe 10.5

# a
mdma_zuerich <- c(16.3, 12.7, 14, 53.3, 117, 62.6, 27.6)
mdma_basel <- c(10.4, 8.91, 11.7, 29.9, 46.3, 25, 29.4)
d <- mdma_zuerich - mdma_basel

mean(d)

sd(d)

# d
# gepaart
t.test(mdma_zuerich, mdma_basel, alternative = "greater", paired=TRUE)

# ungepaart
t.test(mdma_zuerich, mdma_basel, alternative = "greater", paired=FALSE)

# f
wilcox.test(mdma_zuerich, mdma_basel, alternative = "greater", paired = TRUE)


# Aufgabe 10.6
mf <- read.csv("mannfrau.csv")
diff <- mf$alter.mann - mf$alter.frau

boxplot(diff, col = "orange")

# a
# iii



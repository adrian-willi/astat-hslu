library(animation)

x <- c(1:10)

y <- x+rnorm(10, mean=0, sd=2)

a <- 0
b <- 1

least.squares(x, y, n = 15, ani.type = c("slope", "intercept"), a, b, 
              ab.col = c("gray", "black"), est.pch = 19, v.col = "red", v.lty = 2, rss.pch = 19, 
              rss.type = "o", mfrow = c(1, 2))


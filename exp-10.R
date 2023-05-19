data <- rnorm(500)
print(data)
data[1:10] <- c(46,9,15,-90,42,50,-82,74,61,-32)
boxplot(data)
data <- data[!data %in% boxplot.stats(data)$out]
boxplot(data)
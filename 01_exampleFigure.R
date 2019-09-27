rm(list = ls())

x <- 1:10
y <- x^2

if(!interactive()) png('01_exampleFigure.png', width = 4, height = 4, units = 'in', res = 200, pointsize = 12)
plot(x, y)
if(!interactive()) dev.off()

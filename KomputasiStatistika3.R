airquality

#histogram untuk variabel Wind,
dens <- density(airquality$Wind)

hist(airquality$Wind, 
     breaks = 10, 
     probability = TRUE, 
     xlab = "Wind", 
     main = "Histogram Wind")

lines(dens, col = "red", lwd = 2)

# boxplot dan steam and leaf
boxplot(airquality$Wind, horiz = TRUE, 
        main = "Wind",
        xlab = "Boxplot Wind")

stem(airquality$Wind)

#Buat scatter plot
plot(Temp ~ Wind, data = airquality,
     pch = 16,
     main = "Scatterplot Wind dan Temperature",
     xlab = "Wind",
     ylab = "Temperature")

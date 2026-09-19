#data airquality
data(airquality)
airquality

#histogram untuk variabel Wind, sertakan pula kepadatannya
dens <- density(airquality$Wind)

hist(airquality$Wind, 
     probability = TRUE, 
     xlab = "Wind", 
     main = "Histogram Kecepatan Angin")

lines(dens, col = "red", lwd = 2)

#plot kotak dan steam and leaf
boxplot(airquality$Wind, horiz=TRUE,
        main = "Boxplot Variabel Wind",
        xlab = "Wind")

stem(airquality$Wind)

#diagram sebaran
plot(airquality$Wind, airquality$Temp,
     main = "Scatter Plot Wind dan Temp",
     xlab = "Wind",
     ylab = "Temperature",
     pch = 19)


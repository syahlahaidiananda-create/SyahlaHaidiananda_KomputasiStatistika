# Soal 1: Rata-rata waktu tunggu mu = 5 menit (lambda = 1/5 = 0.2)
# Menghitung Peluang P(X > 5)

#sebaran eksponensial
peluang <- pexp(5, rate = 1/5, lower.tail = FALSE)
cat("Peluang P(X > 5) [Cara 1]:", peluang, "\n")

# grafik  Eksponensial dengan lambda = 0.2  (E[X] = 5)
x_dexp <- seq(1, 30, by = 1)
y_dexp <- dexp(x_dexp, rate = 0.2)
plot(x_dexp, y_dexp, type="l", col="blue", lwd=2,
     main="PDF Distribusi Eksponensial (λ=0.2)",
     xlab="x", ylab="f(x)")


#Soal 2: kereta komuter tiba di stasiun secara acak antara pukul 07.00 hingga 07.20 
#(interval 20 menit). berapakah ragam (varians) waktu tunggu penumpang?
#Uniform pada interval
set.seed(2025)
n <- 1000
a <- 0
b <- 20

var_teoritis <- (b - a)^2 / 12
cat("Varians waktu tunggu:", var_teoritis, "menit^2\n")

# Generate sampel
x <- runif(n, min = a, max = b)
x

#Nilai Density, CDF, dan Quantile 
d_values <- dunif(c(0, 10, 20), min = a, max = b)   # f(x) = 1/(20-0) = 0.05
p_values <- punif(c(0, 10, 20), min = a, max = b)
q_values <- qunif(c(0.25, 0.5, 0.75), min = a, max = b)

#Plot: Histogram sampel + Overlay PDF teoritis
hist(x, breaks = 30, probability = TRUE,
     main = "Histogram Sampel U(0,20) dengan PDF Teoritis",
     xlab = "Waktu Tunggu (menit)")
curve(dunif(x, min = a, max = b), from = a, to = b, add = TRUE, col = "red", lwd = 2)

#Soal 3: masa pakai sensor suhu memiliki rata-rata mu = 10 tahun. berapa peluang sensor
#tersebut rusak sebelummencapai usia 5 tahun?

#sebaran eksponensial
peluang <- pexp(5, rate = 1/10, lower.tail = FALSE)
cat("Peluang P(X < 5) [Cara 1]:", peluang, "\n")

# grafik  Eksponensial dengan lambda = 0.1
x_dexp <- seq(1, 30, by = 1)
y_dexp <- dexp(x_dexp, rate = 0.1)
plot(x_dexp, y_dexp, type="l", col="blue", lwd=2,
     main="PDF Distribusi Eksponensial (λ=0.1)",
     xlab="x", ylab="f(x)")

#soal 4: Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan 
#sigma = 5 gram. Kemasan dianggap underweight jika beratnya kurang dari 
#240 gram. Berapa proporsi produk yang tergolong underweight? 

#Distribusi Gaussian 
set.seed(2025)
n <- 100
mu <- 250
sigma <- 5

#proporsi produk underweight: P(X < 240)
p4 <- pnorm(240, mean = mu, sd = sigma)
cat("Proporsi underweight P(X < 240):", p4, "\n")

# Generate sampel
x <- rnorm(n, mean = mu, sd = sigma)

#statistik sampel
(x_bar <- mean(x))                 
(mle_sigma2 <- mean((x - x_bar)^2)) 
(sd_sample <- sd(x))               

#histogram + overlay PDF teoritis (dengan parameter sebenarnya)
hist(x, breaks = 30, probability = TRUE,
     main = "Histogram sampel N(250, 5^2) dengan PDF teoritis",
     xlab = "Berat Bersih Kopi (gram)")
curve(dnorm(x, mean = mu, sd = sigma), from = mu-4*sigma, to = mu+4*sigma, add = TRUE, lwd = 2)
abline(v = x_bar, col = "blue", lwd = 2)     # mean sampel
abline(v = mu, col = "red", lwd = 2, lty = 2)   # mean sebenarnya
legend("topright", legend = c("PDF teoritis", "mean sampel", "mean true"),
       lty = c(1,1,2), col = c("black","blue","red"), bty = "n")

#(1)Jika rata-rata pelanggan datang ke toko adalah 3 orang per jam,
#modelkan dengan Poisson dan hitung P(X≥5)

#parameter poisson
lambda <- 3

# Menghitung P(X >= 5)
P_X5 <- 1 - ppois(4, lambda)

cat("P(X >= 5) =", P_X5, "\n")
cat("P(X >= 5) =", round(P_X5 * 100, 2), "%\n")


#(2)Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian. 
#Modelkan jumlah bola merah yang diambil dengan distribusi yang tepat.


#parameter

N <- 100
K <- 20
n <- 10

# Nilai X
x <- 0:10

#PMF
Pmf <- dhyper(x,K,N - K,n)

#tabel
tabel <- data.frame(
  Jumlah_Bola_Merah = x,
  Probabilitas = Pmf
)
tabel



#(3)Simulasikan 1.000 percobaan Binomial (n=15,p=0.4)
#dan bandingkan histogram hasil simulasi dengan PMF teoretis.

#parameter
n <- 15
p <- 0.4

# Simulasi 1.000 percobaan
set.seed(123)
hasil <- rbinom(
  n = 1000,
  size = n,
  prob = p
)


# Histogram hasil simulasi
hist(hasil,
  breaks = seq(-0.5, 15.5, by = 1),
  probability = TRUE,
  main = "Simulasi 1.000 Percobaan Binomial",
  xlab = "Jumlah Keberhasilan (X)",
  ylab = "Probabilitas"
)

# Nilai X yang mungkin
x_binom <- 0:15

# PMF teoretis
pmf_binom <- dbinom(
  x_binom,
  size = n,
  prob = p
)

# Menambahkan PMF teoretis
points(
  x_binom,
  pmf_binom,
  pch = 19
)


pmf

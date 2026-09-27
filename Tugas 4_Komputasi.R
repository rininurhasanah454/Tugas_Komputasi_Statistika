#1 distribusi poisson
lambda <- 3
# P(X >= 5)
P <- 1 - ppois(4, lambda)
P

#PMF Poisson
nilai_x <- 0:12
peluang_x <- dpois(nilai_x, lambda)

plot(nilai_x, peluang_x,
     type = "h",
     lwd = 3,
     main = "Sebaran Poisson",
     xlab = "Jumlah pelanggan",
     ylab = "Peluang")

#2. Distribusi Hypergeometric
N <- 100  # total bola
K <- 20   # bola merah
n <- 10   # bola yang diambil


merah <- 0:10

# Menghitung peluang 
peluang_merah <- dhyper(
  merah,
  m = K,
  n = N - K,
  k = n
)
peluang_merah

#tabel peluang
hasil_hyper <- data.frame(
  Jumlah_Bola_Merah = merah,
  Peluang = peluang_merah
)

hasil_hyper

# Grafik PMF
plot(merah, peluang_merah,
     type = "h",
     lwd = 3,
     main = "Sebaran Hipergeometrik",
     xlab = "Jumlah bola merah",
     ylab = "Peluang")

#3. distribusi binomial
n <- 15
p <- 0.4

# Simulasi 1.000 percobaan
set.seed(123)
hasil <- rbinom(1000, size = n, prob = p)
head(samp, n = 10)

# PMF teoretis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
pmf

# Histogram hasil simulasi
hist(hasil,
     breaks = seq(-0.5, 15.5, 1),
     probability = TRUE,
     main = "Simulasi Binomial dan PMF Teoretis",
     xlab = "Jumlah keberhasilan",
     ylab = "Probabilitas")

# Tambahkan PMF teoretis
points(x, pmf, pch = 19)
lines(x, pmf)

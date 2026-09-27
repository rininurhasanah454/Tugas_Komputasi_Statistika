#1
lambda <- 3
p <- ppois(4, lambda, lower.tail = FALSE)
p

#2
# Distribusi Hypergeometric
N <- 100      # total bola
K <- 20       # bola merah
n <- 10       # bola yang diambil

# Peluang jumlah bola merah yang terambil
x <- 0:n
P_X <- dhyper(x, K, N - K, n)

data.frame(
  Jumlah_Merah = x,
  Probabilitas = P_X
)
dhyper(x, K, N-K, n)

#3
n <- 15
p <- 0.4

# Simulasi 1.000 percobaan
set.seed(123)
hasil <- rbinom(1000, size = n, prob = p)
hasil

# PMF teoretis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
pmf

# Histogram hasil simulasi
hist(hasil,
     breaks = seq(-0.5, 15.5, 1),
     probability = TRUE,
     main = "Simulasi Binomial (n=15, p=0.4)",
     xlab = "Jumlah keberhasilan",
     ylab = "Probabilitas")

# Tambahkan PMF teoretis
points(x, pmf, pch = 19)
lines(x, pmf)

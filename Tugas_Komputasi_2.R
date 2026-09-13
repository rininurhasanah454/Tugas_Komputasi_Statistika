#membuat data iris
data_iris <- iris
data_iris

#1. menampilkan data Sepal.Length
s_length <- iris["Sepal.Length"]
s_length

#2. tipe data tiap kolom
sapply(data_iris, class)

#3. membuat variabel baru bernama turunan
library(dplyr)
data_iris <- data_iris %>%
  mutate(
    turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
  )
head(data_iris)

#4. mengubah variabel turunan menjadi sepal
names(data_iris)[names(data_iris) == "turunan"] <- "sepal"
head(data_iris)

#5. data sepal Besar dari species virginica
data_virginica <- data_iris[data_iris$sepal == "Besar" & data_iris$Species == "virginica", ]
data_virginica

#6. cek jumlah species
table(data_iris$Species)

#7. pecah data menjadi data frame berdasarkan species
data_species <- split(data_iris, data_iris$Species)
data_species

#8. urutkan setiap data frame berdasarkan Sepal.Width
data_species$setosa <- data_species$setosa[order(data_species$setosa$Sepal.Width), ]
data_species$setosa

data_species$versicolor <- data_species$versicolor[order(data_species$versicolor$Sepal.Width), ]
data_species$versicolor

data_species$virginica <- data_species$virginica[order(data_species$virginica$Sepal.Width), ]
data_species$virginica
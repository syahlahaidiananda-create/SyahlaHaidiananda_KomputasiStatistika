# Input data iris
iris

# 1. Menampilkan data Sepal.Length
iris$Sepal.Length

# 2. Menyebutkan tipe data tiap kolom
str(iris)
sapply(iris, class)

# 3. Membuat variabel turunan dari Sepal.Width
iris$turunan <- ifelse(iris$Sepal.Width > 3,
                       "Besar", "Kecil")
iris

# 4. Mengubah variabel turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"
names(iris)

# 5. Mengambil data sepal bernilai Besar dari species virginica
data_virginica <- iris[
  iris$sepal == "Besar" & iris$Species == "virginica",
]

data_virginica

# 6. Mengecek jumlah species dalam data
table(iris$Species)

# 7. Memecah data iris menjadi 3 data frame berdasarkan species
iris_setosa <- subset(iris, Species == "setosa")
iris_versicolor <- subset(iris, Species == "versicolor")
iris_virginica <- subset(iris, Species == "virginica")

iris_setosa
iris_versicolor
iris_virginica

# 8. Mengurutkan setiap data frame berdasarkan Sepal.Width
iris_setosa <- iris_setosa[
  order(iris_setosa$Sepal.Width),
]

iris_versicolor <- iris_versicolor[
  order(iris_versicolor$Sepal.Width),
]

iris_virginica <- iris_virginica[
  order(iris_virginica$Sepal.Width),
]

iris_setosa
iris_versicolor
iris_virginica
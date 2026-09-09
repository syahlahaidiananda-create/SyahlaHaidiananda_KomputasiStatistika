# Vector numeric
v_num <- c(3.2, 5, 4, 7.6,  9, 8.1)
v_num

# Vector integer
v_int <- c(10L, 11L, 7L)
v_int

# Vector logical
v_log <- c(FALSE, FALSE, TRUE, FALSE)
v_log

# Vector character
v_char <- c("Nama", "Kucingku", "adalah", "Bubuy")
v_char

# Matrix 4x4
m <- matrix(4:19, nrow = 4, ncol = 4)
m

# Array 3 dimensi
a <- array(1:12, dim = c(2, 2, 3))
a

# Membuat data frame
df <- data.frame(
  Barang = c("buku", "pena", "pensil"),
  Jumlah = c(5, 2, 3),
  Tersedia = c(TRUE,FALSE, FALSE),
  Terjual = c(FALSE, TRUE, TRUE)
)
df


# Membuat list
mylist <- list(
  angka = c(3.2, 5, 4, 7.6, 9, 8.1),
  integer = c(10L, 11L, 7L),
  df = data.frame(
    Barang = c("Buku", "Pena", "Pensil"),
    Jumlah = c(5, 2, 3),
    Tersedia = c(TRUE, FALSE, FALSE)
  ),
  list2 = list(
    angka = c(1.5, 3, 5.5, 4.3),
    integer = c(9L, 2L, 1L),
    df = data.frame(
      Kendaraan = c("Motor", "Mobil", "Truck"),
      Jumlah = c(3, 1, 8)
    )
  )
)

mylist

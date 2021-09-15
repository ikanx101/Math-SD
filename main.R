rm(list=ls())

library(dplyr)
library(ggplot2)

data = data.frame(waktu = NA,
		  benar = NA)

source("soal.R")

clc()

cat("===================================================\n")
cat("            GENERATOR SOAL BERHITUNG\n")
cat("		        versi 1.0\n")
cat("\nSelamat datang di program ini. Program ini bertujuan untuk membuat soal hitung-hitungan untuk anak SD kelas 2 - 4. Kamu bisa menentukan berapa banyak soal penambahan, pengurangan, perkalian, dan pembagian yang akan dikerjakan. Waktu mulai dihitung sejak setiap soal tampil di layar dan berhenti dihitung saat soal dijawab.")
cat("===================================================\n")
cat("\n\nKetik:\nmulai()\n\nLalu enter untuk memulai.")

mulai = function(){
  nama = readline(prompt = "Masukkan nama kamu: ")
}

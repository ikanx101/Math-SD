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
cat("\nSelamat datang di program ini. Program ini bertujuan\nuntuk membuat soal hitung-hitungan untuk anak SD kelas 2 - 4.\nKamu bisa menentukan berapa banyak soal penambahan, pengurangan,\nperkalian, dan pembagian yang akan dikerjakan.\nWaktu mulai dihitung sejak setiap soal tampil di layar\ndan berhenti dihitung saat soal dijawab.\n")
cat("\nSelamat mencoba dan semoga menyenangkan!\n")
cat("===================================================\n")
cat("\n\nKetik:\nmulai()\n\nLalu enter untuk memulai.\n")

mulai = function(){
  nama = readline(prompt = "Masukkan nama kamu: ")
}

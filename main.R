# selalu dimulai dari hati yang bersih
rm(list=ls())

# panggil libraries
library(dplyr)
library(ggplot2)

# bikin template utk visualisasi rekap jawaban
rekap = data.frame(waktu = NA,
  		   benar = NA)

# panggil soal
source("soal.R")

# clear console
clc()

# keterangan
cat("===================================================\n")
cat("            GENERATOR SOAL BERHITUNG\n")
cat("		        versi 1.1\n")
cat("\nSelamat datang di program ini. Program ini bertujuan\nuntuk membuat soal hitung-hitungan untuk anak SD kelas 2 - 4.\nKamu bisa menentukan berapa banyak soal penambahan, pengurangan,\nperkalian, dan pembagian yang akan dikerjakan.\nWaktu mulai dihitung sejak setiap soal tampil di layar\ndan berhenti dihitung saat soal dijawab.\n")
cat("\nSelamat mencoba dan semoga menyenangkan!\n")
cat("===================================================\n")
cat("\n\nKetik:\nmulai()\n\nLalu enter untuk memulai.\n")

mulai = function(){
  # input nama
  nama = readline(prompt = "Masukkan nama kamu: ")
  clc()
  cat(paste0("Halo ",nama,",\n"))
  cat("Ada empat kategori soal, yakni:\n1. Penjumlahan\n2. Pengurangan\n3. Perkalian\n4. Pembagian\n")
  cat("Kamu bisa menentukan berapa soal yang akan dikerjakan di setiap bagian tersebut.\n")

  # input banyaknya soal perbagian
  n_penjumlahan = readline(prompt = "Masukkan banyaknya soal penjumlahan yang mau kamu kerjakan: ")
  cat("\n")
  n_pengurangan = readline(prompt = "Masukkan banyaknya soal pengurangan yang mau kamu kerjakan: ")
  cat("\n")
  n_perkalian = readline(prompt = "Masukkan banyaknya soal perkalian yang mau kamu kerjakan: ")
  cat("\n")
  n_pembagian = readline(prompt = "Masukkan banyaknya soal pembagian yang mau kamu kerjakan: ")
  cat("\n")
  
  # kasih jeda dulu  
  gimmick()

  # cek apakah yang diinput integer
  n_penjumlahan = as.numeric(n_penjumlahan)
  n_pengurangan = as.numeric(n_pengurangan)
  n_pembagian = as.numeric(n_pembagian)
  n_perkalian = as.numeric(n_perkalian)

  # kita set jaring pengaman dulu
  if(is.na(n_penjumlahan) | n_penjumlahan <= 0) {
     n_penjumlahan = 1
     cat("Karena input banyaknya soal penjumlahan salah, maka soalnya hanya ada 1.\n")
     }
  
  if(is.na(n_pengurangan) | n_pengurangan <= 0){
     n_pengurangan = 1
     cat("Karena input banyaknya soal pengurangan salah, maka soalnya hanya ada 1.\n")
     }
  
  if(is.na(n_perkalian) | n_perkalian <= 0){
     n_perkalian = 1
     cat("Karena input banyaknya soal perkalian salah, maka soalnya hanya ada 1.\n") 
     }

  if(is.na(n_pembagian) | n_pembagian <= 0){
     n_pembagian = 1
     cat("Karena input banyaknya soal pembagian salah, maka soalnya hanya ada 1.\n")
     }

  # bersiap untuk memulai
  hitung_mundur()
}

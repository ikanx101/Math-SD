# selalu dimulai dari hati yang bersih
rm(list=ls())

# panggil libraries
library(dplyr)
library(txtplot)

# bikin template utk visualisasi rekap jawaban
rekap = data.frame(waktu = NA,
		   benar = NA)

# set indeks awal
ikang = 1

# panggil soal
source("soal.R")

# clear console
clc()

# keterangan
cat("===================================================\n")
cat("             KUMOR: KUMON ON R\n")
cat("      Generator Soal Berhitung ala Kumon\n")
cat("                versi 3.0\n")
cat("\nSelamat datang di program ini. Program ini bertujuan\nuntuk membuat soal hitung-hitungan untuk anak SD kelas 2 - 4.\n")
cat("Kamu bisa menentukan berapa banyak soal penambahan, pengurangan,\nperkalian, dan pembagian yang akan dikerjakan.\n")
cat("Waktu mulai dihitung sejak setiap soal tampil di layar dan\nberhenti dihitung saat soal dijawab.\n")
cat("\nSelamat mencoba dan semoga menyenangkan!\n")
cat("===================================================\n")
cat("\nKetik:\nmulai()\nLalu tekan ENTER untuk memulai.\n")

mulai = function(){
  # input nama
  nama = readline(prompt = "Masukkan nama kamu: ")
  clc()
  cat(paste0("Halo ",nama,",\n"))
  cat("Ada empat kategori soal, yakni:\n1. Penjumlahan\n2. Pengurangan\n3. Perkalian\n4. Pembagian\n")
  cat("Kamu bisa menentukan berapa soal yang akan\ndikerjakan di setiap bagian tersebut.\n\n")

  Sys.sleep(5)
  cat("Kamu hanya bisa mengisikan nilai lebih besar atau sama dengan 0. \n\n")
  # input banyaknya soal perbagian
  n_penjumlahan = readline(prompt = "Masukkan banyaknya soal PENJUMLAHAN yang mau kamu kerjakan: ")
  cat("\n")
  n_pengurangan = readline(prompt = "Masukkan banyaknya soal PENGURANGAN yang mau kamu kerjakan: ")
  cat("\n")
  n_perkalian = readline(prompt = "Masukkan banyaknya soal PERKALIAN yang mau kamu kerjakan: ")
  cat("\n")
  n_pembagian = readline(prompt = "Masukkan banyaknya soal PEMBAGIAN yang mau kamu kerjakan: ")
  cat("\n")
  
  # kasih jeda dulu  
  gimmick_1()

  # cek apakah yang diinput integer
  n_penjumlahan = as.numeric(n_penjumlahan)
  n_pengurangan = as.numeric(n_pengurangan)
  n_pembagian = as.numeric(n_pembagian)
  n_perkalian = as.numeric(n_perkalian)

  # kita set jaring pengaman dulu
  if(is.na(n_penjumlahan) | n_penjumlahan <= 0) {
     n_penjumlahan = 1
     cat("Karena input banyaknya soal penjumlahan salah, maka soalnya hanya ada 1.\n")
     Sys.sleep(4)
     }
  
  if(is.na(n_pengurangan) | n_pengurangan <= 0){
     n_pengurangan = 1
     cat("Karena input banyaknya soal pengurangan salah, maka soalnya hanya ada 1.\n")
     Sys.sleep(4)
     }
  
  if(is.na(n_perkalian) | n_perkalian <= 0){
     n_perkalian = 1
     cat("Karena input banyaknya soal perkalian salah, maka soalnya hanya ada 1.\n") 
     Sys.sleep(4)
     }

  if(is.na(n_pembagian) | n_pembagian <= 0){
     n_pembagian = 1
     cat("Karena input banyaknya soal pembagian salah, maka soalnya hanya ada 1.\n")
     Sys.sleep(4)
     }
  
  # bersiap untuk memulai
  hitung_mundur()

  # kita mulai penjumlahan dulu
  for(i in 1:n_penjumlahan){
    rekap[ikang,] = penjumlahan()
    ikang = ikang + 1
    }
  # loop pengurangan
  for(i in 1:n_pengurangan){
    rekap[ikang,] = pengurangan()
    ikang = ikang + 1
    }
  # loop perkalian
  for(i in 1:n_perkalian){
    rekap[ikang,] = perkalian()
    ikang = ikang + 1
    }
  # loop pembagian
  for(i in 1:n_pembagian){
    rekap[ikang,] = pembagian()
    ikang = ikang + 1
    }

  # kasih jeda biar terlihat dia benar atau tidak 
  Sys.sleep(1.5)

  # hasilnya disimpan dalam rekap
  rekap$tipe = c(rep("Penjumlahan",n_penjumlahan),
                 rep("Pengurangan",n_pengurangan),
                 rep("Perkalian",n_perkalian),
                 rep("Pembagian",n_pembagian)
                )

  # kasih gimmick lagi
  gimmick_2()
  
  # mulai bikin laporan di sini
  waktu_total = round(sum(rekap$waktu),3)
  waktu_rata = round(mean(rekap$waktu),3)
  benar_total = sum(rekap$benar)
  total_soal = nrow(rekap)
  persen_benar_total = round(benar_total * 100 / total_soal,2)
  pesan_1 = paste0("Halo ",
		   nama,
		   "\nSelamat kamu telah menyelesaikan semua soal yang ada.\n")
  pesan_2 = paste0("Kamu membutuhkan waktu selama ",
		   waktu_total,
		   " detik\nuntuk menyelesaikan semua soal.\n",
		   "Rata-rata, kamu membutuhkan ",
		   waktu_rata,
		   " detik\nuntuk menjawab satu soal.\n\n")
  pesan_3 = paste0("Kamu berhasil menjawab ",
		   benar_total,
		   " buah soal dengan benar\ndari total ",
		   total_soal,
		   " buah soal yang dikerjakan.\n")
  pesan_4 = paste0("SKOR KAMU ADALAH: ",persen_benar_total,"%\n\n")
  cat(pesan_1)
  cat(pesan_2)
  cat(pesan_3)
  cat(pesan_4)

  Sys.sleep(7)
    
  kesimpulan = 
    rekap %>%
    group_by(tipe) %>%
    summarise(benar = sum(benar),
	      n_soal = length(tipe),
	      waktu_total = sum(waktu),
	      waktu_mean = mean(waktu)) %>%
    ungroup() %>%
    mutate(skor = benar / n_soal * 100,
	   skor = paste0(round(skor,2),"%")
	  ) %>%
    select(tipe,benar,skor,waktu_mean,waktu_total) %>%
    arrange(desc(benar)) %>%
    rename("Pertanyaan" = tipe,
	   "SKOR" = skor,
	   "Benar" = benar,
	   "Waktu Total" = waktu_total,
	   "Waktu Rata-Rata" = waktu_mean)
  
  cat("Berikut adalah laporan detail kamu: \n")
  print(kesimpulan)
  cat("\n\nPerhatikan kembali pertanyaan mana yang masih memiliki skor rendah.\n")
  cat("=====================================================================\n\n")
  
  # bikin plot dulu
  plot = 
    rekap %>%
    mutate(waktu = as.numeric(waktu),
	   timeline = cumsum(waktu),
	   cum_benar = cumsum(benar),
	   cum_skor = cum_benar / nrow(rekap))
  
  Sys.sleep(10)
  clc()
  txtplot(plot$timeline, plot$cum_skor, xlab = "Waktu pengerjaan", ylab = "Skor")
  Sys.sleep(7)
	
  cat("\nUntuk memulai kembali, ketikkan: mulai()\nLalu tekan ENTER.")
  cat("\n\nUntuk keluar, silakan CLOSE atau ketik q() lalu tekan ENTER.\n")
  cat("===============================================================\n\n")
}

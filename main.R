# surpress warning messages
options(warn =-1)

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
source("/home/r-environment/soal.R")

# clear console
clc()

# keterangan
cat("===================================================\n")
cat("             kumoR: kumon in R\n")
cat("      Generator Soal Berhitung ala Kumon\n")
cat("                versi 5.0\n")
cat("\nSelamat datang di program ini. Program ini bertujuan\nuntuk membuat soal hitung-hitungan untuk anak SD kelas 2 - 4.\n")
cat("Kamu bisa menentukan berapa banyak soal yang akan dikerjakan per bagiannya.\n")
cat("Waktu mulai dihitung sejak setiap soal tampil di layar dan\nberhenti dihitung saat soal dijawab.\n")
cat("\nSelamat mencoba dan semoga menyenangkan!\n")
cat("===================================================\n")
cat("\nKetik:\nmulai()\nLalu tekan ENTER untuk memulai.\n")

# mulai 
  # input nama
  nama = readline(prompt = "Masukkan nama kamu: ")
  age = readline(prompt = "\nBerapa usia kamu? ")
  clc()
  cat(paste0("Halo ",nama,",\n"))
  cat("Ada ENAM kategori soal, yakni:\n1. Penjumlahan\n2. Pengurangan\n3. Perkalian\n4. Pembagian\n5. Mengurutkan bilangan\n6. Faktorisasi bilangan\n\n")
  cat("Kamu bisa menentukan berapa soal yang akan\ndikerjakan di setiap bagian tersebut.\n\n")

  Sys.sleep(5)
  cat("Isi dulu berapa banyak soal yang\nmau kamu kerjakan ya. \n\n")
  
  # input banyaknya soal
  # penjumlahan  
  n_penjumlahan = readline(prompt = "Berapa banyak soal PENJUMLAHAN yang mau kamu kerjakan: ")
  cat("\n")
  # pengurangan
  n_pengurangan = readline(prompt = "Berapa banyak soal PENGURANGAN yang mau kamu kerjakan: ")
  cat("\n")
  # perkalian
  n_perkalian = readline(prompt = "Berapa banyak soal PERKALIAN yang mau kamu kerjakan: ")
  cat("\n")
  # pembagian
  n_pembagian = readline(prompt = "Berapa banyak soal PEMBAGIAN yang mau kamu kerjakan: ")
  cat("\n")
  # pengurutan
  n_pengurut = readline(prompt = "Berapa banyak soal MENGURUTKAN BILANGAN yang hendak kamu kerjakan: ")
  cat("\n")
  # n faktorisasi
  n_faktorisasi = readline(prompt = "Berapa banyak soal FAKTORISASI yang hendak kamu kerjakan: ")
  
  clc()

  # cek apakah yang diinput integer
  n_penjumlahan = as.numeric(5) # (n_penjumlahan)
  n_pengurangan = as.numeric(5) # (n_pengurangan)
  n_pembagian   = as.numeric(1) # (n_pembagian)
  n_perkalian   = as.numeric(1) # (n_perkalian)
  n_pengurut    = as.numeric(1) # (n_pengurut)
  n_faktorisasi = as.numeric(1) # (n_faktorisasi)

  # kita set jaring pengaman dulu
  if(is.na(n_penjumlahan) | n_penjumlahan <= 0) {
     n_penjumlahan = 0
     cat("Tidak ada soal penjumlahan yang akan dikerjakan.\n")
     Sys.sleep(2)
     }
  
  if(is.na(n_pengurangan) | n_pengurangan <= 0){
     n_pengurangan = 0
     cat("Tidak ada soal pengurangan yang akan dikerjakan.\n")
     Sys.sleep(2)
     }
  
  if(is.na(n_perkalian) | n_perkalian <= 0){
     n_perkalian = 0
     cat("Tidak ada soal perkalian yang akan dikerjakan.\n") 
     Sys.sleep(2)
     }

  if(is.na(n_pembagian) | n_pembagian <= 0){
     n_pembagian = 0
     cat("Tidak ada soal pembagian yang akan dikerjakan.\n")
     Sys.sleep(2)
     }
  
  if(is.na(n_pengurut) | n_pengurut <= 0){
     n_pengurut = 0
     cat("Tidak ada soal mengurutkan yang akan dikerjakan.\n\n")
     Sys.sleep(2)
     }

  if(is.na(n_faktorisasi) | n_faktorisasi <=0){
     n_faktorisasi = 0
     cat("Tidak ada soal faktorisasi yang akan dikerjakan.\n\n")
     Sys.sleep(4)
     }


  # seandainya tidak ada soal sama sekali yang dikerjakan
  # kita akan paksa agar stop
  # set marker dulu
  marker_1 = sum(n_penjumlahan,n_pengurangan,n_perkalian,n_pembagian,
                 n_pengurut,n_faktorisasi)
  # proses stop
  if(marker_1 == 0){
    cat("TIDAK ADA SOAL SAMA SEKALI YANG DIKERJAKAN\n\n")
    stop("ketik mulai() untuk mengulangi dari awal.")
    } else {
      # set gimmick dulu
      gimmick_1()
      }

  # bersiap untuk memulai
  hitung_mundur()

  # kita mulai penjumlahan dulu
  dummy = 1
  while(dummy <= n_penjumlahan){
    rekap[ikang,] = penjumlahan()
    ikang = ikang + 1
    dummy = dummy + 1
    }
  
  # loop pengurangan
  dummy = 1
  while(dummy <= n_pengurangan){
    rekap[ikang,] = pengurangan()
    ikang = ikang + 1
    dummy = dummy + 1
    }

  # loop perkalian
  dummy = 1
  while(dummy <= n_perkalian){
    rekap[ikang,] = perkalian()
    ikang = ikang + 1
    dummy = dummy + 1
    }

  # loop pembagian
  dummy = 1
  while(dummy <= n_pembagian){
    rekap[ikang,] = pembagian()
    ikang = ikang + 1
    dummy = dummy + 1
    }

  # loop pengurutan
  dummy = 1
  while(dummy <= n_pengurut){
    rekap[ikang,] = pengurutan()
    ikang = ikang + 1
    dummy = dummy + 1
    }

  # loop faktorisasi
  dummy = 1
  while(dummy <= n_faktorisasi){
    rekap[ikang,] = faktorisasi()
    ikang = ikang + 1
    dummy = dummy + 1
    }

  # kasih jeda biar terlihat dia benar atau tidak 
  Sys.sleep(2)

  # hasilnya disimpan dalam rekap
  rekap$tipe = c(rep("Penjumlahan",n_penjumlahan),
                 rep("Pengurangan",n_pengurangan),
                 rep("Perkalian",n_perkalian),
                 rep("Pembagian",n_pembagian),
                 rep("Mengurutkan",n_pengurut),
		 rep("Faktorisasi",n_faktorisasi)
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
  pesan_3 = paste0("Kamu menjawab ",
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

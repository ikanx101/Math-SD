# Readme

Program untuk edukasi anak SD.

## Latar Belakang

Anak SD di kelas 3 - 4 diharapkan sudah bisa mengerjakan soal penambahan, pengurangan, perkalian, dan pembagian yang sederhana serta mengurutkan bilangan. Untuk itu, mereka perlu mendapatkan latihan soal yang cukup. 

Buku latihan yang tersedia saat ini masih terbatas dalam hal jenis dan banyaknya soal. Kadang orang tua tidak memiliki cukup waktu untuk membuat soal latihan yang banyak.

Oleh karena itu, program ini dibuat agar anak bisa mendapatkan soal latihan berhitung yang di-_generate_ secara _random_ dan otomatis.

## Keuntungan Program Ini

Selain men-_generate_ soal, program ini nantinya akan memberikan _output_ berupa:

1. Laporan berapa soal yang terjawab benar:
	- Total soal,
	- Per jenis soal.
1. Waktu pengerjaan.

Tingkat kesulitan soal bisa kita sesuaikan dengan cara mengubah angka _random_ yang di-_generate_ pada fungsi soal.

## Cara Kerja

Program ini dibuat dengan __R__ versi 3.4 _Command Line Interface_.

- _Clone_ repo ini ke dalam _local drive_. 
- Jalankan __R__ (minimal versi 3.4).
- Pastikan `library(dplyr)` dan `library(txtplot)` sudah ter-_install_. Caranya:
	- `install.packages("dplyr")`
	- `install.packages("txtplot")`
- Ketikkan:
	- `source("main.R")` kemudian tekan __enter__.
	-  `mulai()` kemudian tekan __enter__.

## Demo

Video demonya bisa dilihat di [sini](https://www.youtube.com/watch?v=1wV5Dyl0boY).

## Digunakan di Android

Program ini bisa digunakan di Android memanfaatkan Linux CLI. Caranya adalah sebagai berikut:

1. _Install_ `UserLand` dari _Google PlayStore_.
1. Buka `UserLand`, pilih _install_ Ubuntu dengan pilihan `ssh`. Isi _password_ sesuai yang kamu inginkan.
1. _Install_ __R__ dengan cara sebagai berikut:
   1. `sudo apt update`
   1. `sudo apt upgrade`
   1. `sudo apt install r-base`

## Digunakan di _Google Colab_

Skrip yang ada pada `main.R` dan `soal.R` bisa juga digunakan di Google Colab.

## _Contact_

Untuk diskusi lebih lanjut, silakan hubungi [Ikang](https://ikanx101.com)

## _Last Update_

### 5 Oktober 2021 15:32 WIB

_Updates_

1. Tambahan soal mengurutkan bilangan.
1. Mengakomodir jika __tidak mau mengerjakan__ bagian soal tertentu.

### 6 Oktober 2021 08:05 WIB

_Updates_

1. Tambahan soal faktorisasi bilangan prima.

#########################################################
# Set function yang digunakan utk generate pertanyaan   #
# Jika ingin mengubah tingkat kesulitan, silakan ubah   #
# set angka yang hendak dijadikan soal dengan range     #
# yang lebih besar ya.					#
#							#
#							#
# dibuat dengan R					#
# ikanx101.com						#
#########################################################

# penjumlahan
penjumlahan = function(){
  bilangan = sample(50:5000,2,replace = F)
  kunci = sum(bilangan)
  
  soal = paste(bilangan,collapse = " + ")
  soal = paste0(soal," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end-start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu Benar!\n\n")}
  else {cat("Kamu Salah... Jawaban yang benar adalah: ",kunci,"\n\n")}
  
  output = list(waktu,cek)
  return(output)
}

# pengurangan
pengurangan = function(){
  bilangan = sample(50:5000,2,replace = F)
  jumlah = sum(bilangan)
  kunci = jumlah - bilangan[1]
  
  soal = paste0(jumlah," - ",bilangan[1]," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end-start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu Benar\n\n")}
  else {cat("Kamu Salah... Jawaban yang benar adalah: ",kunci,"\n\n")}
  
  output = list(waktu,cek)
  return(output)
}

# perkalian
perkalian = function(){
  bilangan = c(NA,NA)
  bilangan[1] = sample(5:9,1)
  bilangan[2] = sample(50:200,1)
  kunci = bilangan[1] * bilangan[2]
  
  soal = paste0(bilangan[1]," x ",bilangan[2]," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end-start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu Benar!\n\n")}
  else {cat("Kamu Salah... Jawaban yang benar adalah: ",kunci,"\n\n")}
  
  output = list(waktu,cek)
  return(output)
  
  return(cek)
}

# pembagian
pembagian = function(){
  bilangan = c(NA,NA)
  bilangan[1] = sample(4:9,1)
  bilangan[2] = sample(50:500,1)
  c = bilangan[1] * bilangan[2]
  kunci = c / bilangan[1]
  
  soal = paste0(c," : ",bilangan[1]," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end-start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu Benar!\n\n")}
  else {cat("Kamu Salah... Jawaban yang benar adalah: ",kunci,"\n\n")}
  
  output = list(waktu,cek)
  return(output)
}

# mengurutkan bilangan
pengurutan = function(){
  base = sample(1:99,1)*1000
  bilangan = sample((base-100):(base+900),5,replace=F)
  soal = paste(bilangan,collapse = ", ")
  soal = paste0("Urutkan bilangan-bilangan berikut dari yang terkecil hingga terbesar.\n\n",soal,"\n\nBerikan KOMA untuk memisahkan jawaban!\n\n")

  kunci = sort(bilangan)
  kunci = paste(kunci,collapse = ",") %>% as.character()
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  end = Sys.time()
  waktu = end - start
  jawab = gsub(" ","",jawab)

  cek = jawab == kunci
  if(cek == T){cat("Kamu benar! \n\n")}
  else {cat("Kamu salah...\n\n")}
  output = list(waktu,cek)
  return(output)
}

# faktorisasi prima
source("/home/r-environment/fakto.R")
faktorisasi = function(){
  bil = sample(8:99,1,replace = T)
  kunci = faktorin(bil)
  kunci = paste(kunci,collapse = ",")
  soal = paste0("Berapa FAKTOR PRIMA dari: ",bil,"\n\nJawab dengan KOMA sebagai pemisah antar bilangan.\n\n")  
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = gsub(" ","",jawab)
  jawab = unlist(strsplit(jawab,split = ","))
  jawab = sort(jawab)
  jawab = paste(jawab,collapse = ",")
  end = Sys.time()
  waktu = end - start

  cek = jawab == kunci
  if(cek == T){cat("Kamu benar! \n\n")}
  else{cat("Kamu salah. Jawabannya adalah:\n");cat(kunci);cat("\n\n")}
  output = list(waktu,cek)
  return(output)
}

# clear
clc = function()cat(rep("\n",50))

# gimmick biar disangka mikir
gimmick_1 = function(){
  clc()
  cat("Tunggu sebentar.\nSaya sedang membuat soal.\n")
  Sys.sleep(2)
  for(i in 1:50){cat("~");Sys.sleep(0.05)}
  clc()
}

# gimmick lagi
gimmick_2 = function(){
  clc()
  cat("Tunggu sebentar.\nSaya sedang mempersiapkan laporan dari jawaban kamu.\n")
  Sys.sleep(2)
  for(i in 1:50){cat("~");Sys.sleep(0.05)}
  clc()
}

# fungsi countdown start
hitung_mundur = function(){
  clc()
  cat("Bersiaplah, soal akan segera dimulai dalam:\n")
  i = 10
  for(i in 10:1){cat(i);cat("\n");Sys.sleep(1)}
  Sys.sleep(1)
  clc()
 }

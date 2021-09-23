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
  bilangan[1] = sample(c(4,6),1)
  bilangan[2] = sample(5:9,1)
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
  bilangan[1] = sample(2:10,1)
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

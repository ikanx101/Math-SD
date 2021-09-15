penambahan = function(){
  bilangan = sample(1:50,2,replace = F)
  kunci = sum(bilangan)
  
  soal = paste(bilangan,collapse = " + ")
  soal = paste0(soal," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end.start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu benar")}
  else {cat("Kamu Salah")}
  
  output = list(waktu,cek)
  return(output)
}


pengurangan = function(){
  bilangan = sample(1:50,2,replace = F)
  jumlah = sum(bilangan)
  kunci = jumlah - bilangan[1]
  
  soal = paste0(jumlah," - ",bilangan[1]," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end.start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu benar")}
  else {cat("Kamu Salah")}
  
  output = list(waktu,cek)
  return(output)
}


perkalian = function(){
  bilangan = sample(1:9,2,replace = F)
  kunci = bilangan[1] * bilangan[2]
  
  soal = paste0(bilangan[1]," x ",bilangan[2]," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end.start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu benar")}
  else {cat("Kamu Salah")}
  
  output = list(waktu,cek)
  return(output)
  
  return(cek)
}


pembagian = function(){
  bilangan = sample(1:9,2,replace = F)
  c = bilangan[1] * bilangan[2]
  kunci = c / bilangan[1]
  
  soal = paste0(c," : ",bilangan[1]," = ")
  
  start = Sys.time()
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  end = Sys.time()
  waktu = end.start
  
  cek = jawab == kunci
  if(cek == T){cat("Kamu benar")}
  else {cat("Kamu Salah")}
  
  output = list(waktu,cek)
  return(output)
}
penambahan = function(){
  bilangan = sample(1:50,2,replace = F)
  kunci = sum(bilangan)
  
  soal = paste(bilangan,collapse = " + ")
  soal = paste0(soal," = ")
  
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  
  cek = jawab == kunci
  
  return(cek)
}


pengurangan = function(){
  bilangan = sample(1:50,2,replace = F)
  jumlah = sum(bilangan)
  kunci = jumlah - bilangan[1]
  
  soal = paste0(jumlah," - ",bilangan[1]," = ")
  
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  
  cek = jawab == kunci
  
  return(cek)
}


perkalian = function(){
  bilangan = sample(1:9,2,replace = F)
  kunci = bilangan[1] * bilangan[2]
  
  soal = paste0(bilangan[1]," x ",bilangan[2]," = ")
  
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  
  cek = jawab == kunci
  
  return(cek)
}


pembagian = function(){
  bilangan = sample(1:9,2,replace = F)
  c = bilangan[1] * bilangan[2]
  kunci = c / bilangan[1]
  
  soal = paste0(c," : ",bilangan[1]," = ")
  
  jawab = readline(prompt = soal)
  jawab = as.numeric(jawab)
  
  cek = jawab == kunci
  
  return(cek)
}

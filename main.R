rm(list=ls())

library(dplyr)
library(ggplot2)

data = data.frame(waktu = NA,
		  benar = NA)

source("soal.R")

clc()

cat("===================================================\n")
cat("            GENERATOR SOAL BERHITUNG\n")
cat("			 versi 1.0\n")
cat("===================================================\n")
cat("\n\n")

mulai = function(){
  nama = readline(prompt = "Masukkan nama kamu: ")
}

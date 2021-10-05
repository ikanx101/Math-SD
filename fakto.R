faktorin = function(a){
faktor = c()
i = 2
iter = 1

while(a > 1){
 if(a %% i == 0){
   faktor[iter] = i
   a = a/i
   iter = iter + 1
   i = 2
   }
 else{i = i + 1}
 }
faktor = sort(unique(faktor))
return(faktor)
}

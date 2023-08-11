# ============================================================== #
# 
# Undertanding Tanh function                                  #
#
# ============================================================== #

# Sigmoid Function 

tanh <- function(x){
  value <- (exp(x)-exp(-x))/(exp(x)+exp(-x))
  print(value)
}


list <- list(100,1000,10000,100000)

par(mfrow=c(2,4))

for(i in list){
  input <- rnorm(i)
  plot(input, 
       tanh(input), 
       col='red', 
       main=paste0("Número de inputs:", i),
       xlab='Inputs',
       ylab='Tanh(x)')
  hist(tanh(input), main=paste0("Número de inputs:", i))
  
}

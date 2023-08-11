# ============================================================== #
# 
# Undertanding Sigmoid function                                  #
#
# ============================================================== #

# Sigmoid Function 

sig <- function(z){
  value <- 1/(1+exp(-z))
  print(value)
}


list <- list(100,1000,10000,100000)

par(mfrow=c(2,4))

for(i in list){
  input <- rnorm(i)
  plot(input, 
       sig(input), 
       col='red', 
       main=paste0("Número de inputs:", i))
  hist(sig(input), main=paste0("Número de inputs:", i))
  
}

# ============================================================== #
# 
# Undertanding Linear function                                  #
#
# ============================================================== #

# Linear Function 
# f(x) = a*x
# f'(x) = a
# So: 

linear <- function(x){
  print(x)
}


list <- list(100,1000,10000,100000)

par(mfrow=c(2,4))

for(i in list){
  input <- rnorm(i)
  plot(input, 
       linear(input), 
       col='red', 
       main=paste0("Número de inputs:", i),
       xlab='Inputs',
       ylab='Linear(x)')
  hist(linear(input), main=paste0("Número de inputs:", i))
  
}

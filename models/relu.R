#'---------------------------------------------------------------------------
#' Undertanding ReLu function                                  
#'---------------------------------------------------------------------------
 
#'---------------------------------------------------------------------------
#' Relu Function 

relu <- function(x){
  value <- max(0.0,x)
  print(value)
}

a = seq(from = -10, to = 10);a

str(a)

input <- list()

for(z in a){
  w <- z
  input[z]<- w
}

output <- list()

for(i in a){
  y <- relu(i)
  output[i] <- y
}


par(mfrow=c(1,2))

input
plot(a, output, main='teste', col='red')


###########################################################

relu(a)
list <- list(100,1000,10000,100000)

par(mfrow=c(2,4))

for(i in list){
  input <- rnorm(i)
  output <- relu(input)
  plot(input, 
       output, 
       col='red', 
       main=paste0("Número de inputs:", i),
       xlab='Inputs',
       ylab='Relu(x)')
  hist(output, main=paste0("Número de inputs:", i))
  
}

max(3,4)

t = seq(from = -10, to = 10);t

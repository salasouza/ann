#----------------------------------------------------------------------#
#                 ANN PERCEPTRON                                       #
#----------------------------------------------------------------------#

# Install Packages

library(tidyverse)
library(ggplot2)
library(glue)

# Creating datasets 

# n = numbers of samples
# min = Minimal random value
# max = Maximal random value
# add = Numbers of iterations

createDataset <- function(n,min, max, add){
  
  g1x = runif(n, min = min, max = max)
  g1y = runif(n, min = min, max = max)
  
  g2x = runif(n, min = min+add, max = max+add)
  g2y = runif(n, min = min+add, max = max+add)
  
  gx = c(g1x, g2x)
  gy = c(g1y, g2y)
  group = c(rep(-1,n), rep(1,n))
  df <- data.frame(group, gx, gy)
  cat('Dataset Builded!!','\n')
  print(df)
  
  
}

df <- createDataset(10,0,1,0.5); df

# Data Manipulation

x <- df[, c(2,3)];x
y <- df[, 1]; y


# ANN applied

## Parameters:

# weight (w)
# Learning of rate (eta)
# Bias (b)
# Epochs (nt) Many of treinaments
# Stop (stop) = 0.9
# Errors (e0) 

x
y
ann <- function(x, y, eta, nt){
  # Building Weighties and Errors
  w <- rep(0, dim(x)[2]+1)
  e0 <- rep(0, nt)
  
  print(w)
  print(e0)
  
  for(i in 1:nt){
    print(glue('\n\n ##------------------- NUMBER OF EPOCH: {i} -----##\n\n'))
    
    
    for(j in 1:length(y)){
      print(y*2)
      
      print(glue('\n\n# >>>>>>>>>>> Number of Input: {j} >>>>>>><<<<'))
      print(glue('\n\n#-> X0j: {x[j,]}'))
      print(glue('\n\n#-> W0j: {w[2:length(w)]}'))
      print(glue('\n\n#-> B0j: {w[1] }'))
      
      print(w[2:length(w)])
      # Induced Fied (Input + Weight + Bias)
      
      # induced_field <-vsum( as.numeric(x[i,]) * w[2:length(w)] ) + w[1]
      # 
      # print(glue('\n\n#->> Signal Induced Field: {induced_field}'))
      
      # # Applied Function of Activation
      # 
      # if (induced_field < 0){
      #   yhat <- -1
      #   print(glue('\n\n# >> Signal <0 : {yhat}'))
      #   }else{
      #       yhat = 1
      #       print(glue('\n\n# >> Signal >0 : {yhat}'))}
      # 
      # # upgrade that Weight and Bias
      # 
      # 
      # dw <- (y[i] - yhat) *eta * c(1, as.numeric(x[i, ]))
      # 
      # print(glue('\n\n#->> d Weight: {dw}'))
      # 
      # nw <- (w + dw)
      # 
      # print(glue('\n\n#->> New Weigth: {nw}'))
      # 
      # if ((y[i] - yhat) != 0.0) {
      #   e0[j] <- e0[i] + 1
      # }
      # 
      
      # acc = sum(yhat == y)/length(y)
      # print(glue('\n\n >>>>>>>>  EPOCH: ', j, ' ACCURACY: ', acc))
      # if (acc >= stop){
      #   break
      # }
    }
  }
}



# df <- createDataset(5,0,1,0.5); df
ann(x,y,0.5,10)



if ((y[i] - yhat) != 0.0) {
  errors[j] <- errors[i] + 1
}


plot(1:10, err, 
     type="l", lwd=2, 
     col="red", 
     xlab="epoch #", 
     ylab="errors")

title("Errors vs epoch - learning rate eta = 1")
















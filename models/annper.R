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

# createDataset <- function(n,min, max, add){
# 
#   g1x = runif(n, min = min, max = max)
#   g1y = runif(n, min = min, max = max)
# 
#   g2x = runif(n, min = min+add, max = max+add)
#   g2y = runif(n, min = min+add, max = max+add)
# 
#   gx = c(g1x, g2x)
#   gy = c(g1y, g2y)
#   group = c(rep(-1,n), rep(1,n))
#   df <- data.frame(group, gx, gy)
#   cat('Dataset Builded!!','\n')
#   print(df)
# 
# 
# }
# 
# df <- createDataset(50,0,1,0.5); df

# Dataset Iris


# load iris data set
data(iris)

irissubdf <- iris[1:100, c(1, 3, 5)]
names(irissubdf) <- c("sepal", "petal", "species")
head(irissubdf)

irissubdf[, 4] <- 1
irissubdf[irissubdf[, 3] == "setosa", 4] <- -1

x <- irissubdf[, c(1, 2)]
y <- irissubdf[, 4]

x
y
# head and tail of data
head(x)
head(y)

summary(irissubdf)

# Data Manipulation

# x <- df[, c(2,3)];x
# y <- df[, 1]; y
# 
# x
# 
# y
# ANN applied

## Parameters:

# weight (w)
# Learning of rate (eta)
# Bias (b)
# Epochs (nt) Many of treinaments
# Stop (stop) = 0.9
# Errors (e0) 

ann <- function(x,y,eta,nt){
  
  # Building w and e0:
  w <- rep(0,dim(x)[2] + 1)
  e0 <- rep(0, nt)
  
  for(i in 1:nt){
    print(glue('\n\n>>>>>>>>> Number of Epochs: {i}\n\n'))
    
    for(j in 1:length(y)){
      print(glue('\n\nNumber of raw: {j}'))
      
      print(glue('\n\n#-> X0j:{x[j,]}'))
      print(glue('\n\n#-> W0j:{w[2:length(w)]}'))
      print(glue('\n\n#-> B0j:{w[1] }'))
      
      # Induced Field: 
      
      signal <- sum(w[2:length(w)] * as.numeric(x[j, ])) + w[1]
      print(glue('\n\n>>>>>> Induced Field:{signal}\n\n'))
      print(w)
      
      # Function of Activation:
      
      if(signal < 0){
        prediction <- -1
        print(glue('signal < 0: {prediction}'))
        } else{
          prediction <- 1
          print(glue('signal >= 0: {prediction}'))
        }
      
      # Update: 
      
      dw <- eta * (y[j] - prediction) * c(1, as.numeric(x[j, ]))
      w <- w + dw
      
      print(glue('\n\n>>>>>> Prediction:{prediction}\n\n'))
      print(glue('\n\n>>>>>> y:{y[j]}\n\n'))
      print(glue('\n\n>>>>>> dW:{dw}\n\n'))
      print(glue('\n\n>>>>>> nW:{w}\n\n'))
      
      # Update error function:
      
      if ((y[j] - prediction) != 0.0) {
        e0[i] <- e0[i] + 1}
      
    } # end second loop
    
  } #end first loop
    
  print(w)
  return(e0)

#end function   
}

z <- ann(x,y,0.1,20); z

z

plot(1:20, z, 
     type="l", lwd=2, 
     col="red", 
     xlab="epoch #", 
     ylab="errors")

title("Errors vs epoch - learning rate eta = 1")

###

irisdata <- iris[, c(1, 3, 5)]
names(irisdata) <- c("sepal", "petal", "species")

x <- iris[, 1:4] 
names(x) <- tolower(names(x))

# create species labels
y <- rep(-1, dim(x)[1])
y[iris[, 5] == "virginica"] <- 1

x
y


z <- ann(x,y,0.01,20); z

z

plot(1:20, z, 
     type="l", lwd=2, 
     col="red", 
     xlab="epoch #", 
     ylab="errors")

title("Errors vs epoch - learning rate eta = 1")






























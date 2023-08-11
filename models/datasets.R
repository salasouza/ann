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

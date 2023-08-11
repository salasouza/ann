
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

df <- createDataset(50,0,1,0.5); df

head(df,3)

output <- df[,1]; output

plot(df$gx, df$gy, type='p', xlab='x', ylab='y')

## Testing Graph

library(ggplot2)

qplot(
  x = gx,
  y = gy,
  data = df,
  color = group)
library(lattice)

xyplot(gy ~ gx, group=group, data=df, 
       auto.key=list(space="right"), 
       jitter.x=TRUE, jitter.y=TRUE)




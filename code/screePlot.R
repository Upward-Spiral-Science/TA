library(igraph)
library(foreach)
library(ggplot2)


path <- '/Users/gkiar/code/classes/upward-spiral/grelliam/data/MRN114//'

format <- paste('\\.', 'graphml', '$', sep='')
graph_files <- list.files(path=path, pattern=format, recursive=TRUE, full.names=TRUE)

gs <- load_graphs(graph_files, 70)
A <- gs[[1]]
len <- gs[[3]]

SVD <- foreach(i = 1:len) %do% { svd(A[,,i]) }
diags <- foreach(i = 1:len) %do% { SVD[[i]]$d }

for (i in 1:len) {
  elb =  getElbows(SVD[[i]]$d, n = 3, plot = FALSE)
  if (i == 1) {
    plot(SVD[[i]]$d, type = 'l', xlab = "Dimension", ylab = "Singular Value", main = "MRN114")
  } else {
    lines(SVD[[i]]$d, type = 'l')
  }
  points(elb,SVD[[i]]$d[elb],col=2,pch=20)
}

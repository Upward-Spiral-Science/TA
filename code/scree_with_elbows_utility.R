suppressMessages(require(igraph))
suppressMessages(require(foreach))
suppressMessages(require(ggplot2))

source('/Users/gkiar/code/classes/upward-spiral/grelliam/code/getElbows.R')
source('/Users/gkiar/code/classes/upward-spiral/grelliam/code/load_graphs.R')


scree_with_elbows <- function(name, nodes, path, idx=NaN) {
  format <- paste('\\.', 'graphml', '$', sep='')
  graph_files <- list.files(path=path, pattern=format, recursive=TRUE, full.names=TRUE)
  
  gs <- suppressMessages(load_graphs(graph_files, nodes))
  A <- gs[[1]]
  len <- gs[[3]]
  
  SVD <- foreach(i = 1:len) %do% { svd(A[,,i]) }
  diags <- foreach(i = 1:len) %do% { SVD[[i]]$d }
  elbs <- foreach(i = 1:len, .combine="rbind") %do% { getElbows(SVD[[i]]$d, n=3, plot = FALSE)}
  melbs <- ceiling(apply(elbs, 2, mean))
  mdiag <- foreach(i = 1:length(melbs)) %do% { mean(sapply(diags, function(x) { x[melbs[i]] }))}
  
  for (i in 1:len) {
    temp = cumsum(diags[[i]])/sum(diags[[i]])
    if (i == 1) {
      if (is.nan(idx)) {
        plot(temp, type = 'l', xlab = "", ylab = "",
             main = paste(name, '\n Mean elbows at: ', list(melbs), sep = ''), cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
      } else {
        plot(temp, type = 'l', xlab = "Dimension", ylab = "Portion of Total Variance",
             main = paste(name, '\n Mean elbows at: ', list(melbs), sep = ''), cex.lab=1.8, cex.axis=2, cex.main=2, cex.sub=1.8)
      }
    } else {
      lines(temp, type = 'l')
    }
    points(elbs[i,],temp[elbs[i,]],col=2,pch=20)
  }
  points(melbs, mdiag, col=3, pch=15)
  
}

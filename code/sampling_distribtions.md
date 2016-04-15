# sampling_distributions
Greg Kiar  
March 31, 2016  


Previously, we computed 10 statistics on our true data. We noticed some trends in the graphs, but do not yet know of a relationship (if one exists) between our data and a known graphical distribution, such as Erdos Renyi. Here, we produce graphs of several different distrubutions, and save them to disk, so that we may redo our previous analysis with each of these known models and develop an expectation of which model most closely relates to our data.

The models sampled here are: Erdos Renyi, Barabasi-Albert, Callaway, Forest Fire, Geometric Random, Regular Random, and the Stochastic Block Model.

Shown below is a snippet of how we did this generation for the Erdos Renyi model. The others followed a similar form.





```r
# cat('\nGenerating and saving',samples,'Erdos Renyi Graphs to disk...')
for (i in 1:samples){
  # cat(i,'... ')
  g = erdos.renyi.game(n = nodes, p.or.m = p, type = 'gnp', directed = FALSE, loops = FALSE)
  write.graph(g, paste(path,"er/er_graph", i, ".graphml", sep = ''), format = 'graphml')
}
# cat('done!')
```




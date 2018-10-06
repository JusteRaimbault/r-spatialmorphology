convolMoran <-
function(r_pop){
  meanPop = cellStats(r_pop,sum)/ncell(r_pop)
  w = spatialWeights(nrow(r_pop)-1,ncol(r_pop)-1)
  return(ncell(r_pop) * cellStats(focal(r_pop-meanPop,w,sum,pad=TRUE,padValue=0)*(r_pop - meanPop),sum) / cellStats((r_pop - meanPop)*(r_pop - meanPop),sum) / cellStats(focal(raster(matrix(data=rep(1,ncell(r_pop)),nrow=nrow(r_pop))),w,sum,pad=TRUE,padValue=0),sum))
}

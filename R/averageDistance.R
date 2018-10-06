averageDistance <-
function(m=NULL){
  if(is.null(m)){return(list(averageDistance=NA))}
  r_pop=raster(m)
  return(list(averageDistance=cellStats(focal(r_pop,distanceMatrix(nrow(r_pop)-1,ncol(r_pop)-1),sum,pad=TRUE,padValue=0)*r_pop,sum) / ( cellStats(r_pop,sum)^2 * sqrt(nrow(r_pop)*ncol(r_pop)/pi))))
}

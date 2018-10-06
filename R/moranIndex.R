moranIndex <-
function(m=NULL){
  if(is.null(m)){return(list(moran=NA))}
  r_dens=raster(m/sum(m))
  return(list(moran=Moran(r_dens,spatialWeights(nrow(r_dens)-1,ncol(r_dens)-1))))
}

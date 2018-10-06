entropy <-
function(m=NULL){
  if(is.null(m)){return(list(entropy=NA))}
  r_dens=raster(m/sum(m))
  m= values(r_dens)*cellStats(r_dens,function(x,...){na.omit(log(x))})
  m[is.na(m)]=0
  return(list(entropy = -1 / log(ncell(r_dens)) * sum(m) ))
}

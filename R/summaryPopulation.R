summaryPopulation <-
function(m=NULL){
  if(is.null(m)){return(list(totalPop=NA,maxPop=NA,minPop=NA))}
  r_pop=raster(m)
  return(list(
    totalPop = cellStats(r_pop,'sum'),
    maxPop = cellStats(r_pop,'max'),
    minPop = cellStats(r_pop,'min')
  )
  )
}

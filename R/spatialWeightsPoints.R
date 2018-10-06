spatialWeightsPoints <-
function(points){
  distances <- 1/st_distance(points)
  distances[distances==Inf]=0
  return(distances)
}

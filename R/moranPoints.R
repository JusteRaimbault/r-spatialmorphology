moranPoints <-
function(points,varcol,weights=spatialWeightsPoints(points)){
  v = points[[varcol]]
  v = v-mean(v)
  num = sum(weights*(Diagonal(v)%*%Diagonal(v)))
  denom = sum(v^2)
  normalization = nrow(points) / sum(weights)
  return(normalization*num/denom)
}

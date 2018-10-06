spatialWeights <-
function (N,P,rescaleFactor=1){
  d_hor = (matrix(rep(cumsum(matrix(1,2*N+1,1)),2*P+1),nrow=2*N+1) - N - 1) ^ 2
  d_ver = (matrix(rep(cumsum(matrix(1,2*P+1,1)),2*N+1),ncol=2*P+1,byrow=TRUE) - P - 1) ^ 2
  w = 1 / (rescaleFactor*sqrt((d_hor^2 + d_ver^2)))
  w[w==Inf]=0
  return(w)
}

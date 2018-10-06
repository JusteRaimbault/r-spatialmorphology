rankSizeSlope <-
function(m=NULL){
  if(is.null(m)){return(list(rankSizeAlpha =NA,rankSizeRSquared = NA))}
  r_pop = raster(m)
  size = cellStats(r_pop,function(x,...){na.omit(log(x))})
  size = size[size>0] # at least one person
  size=sort(size,decreasing=TRUE)
  #size = size[1:(length(size)*0.5)] # kill last quartile
  rank = log(1:length(size))
  if(length(size)>0){
    reg = lm(size~rank,data.frame(rank,size))
    return(list(
      rankSizeAlpha = reg$coefficients[2],
      rankSizeRSquared = summary(reg)$r.squared
    )
    )
  }else{return(list(rankSizeAlpha =NA,rankSizeRSquared = NA))}
}

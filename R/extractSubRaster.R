extractSubRaster <-
function(file,r,c,size,factor){
  raw <- raster(file)
  return(data.frame(simplifyBlock(getValuesBlock(raw,row=r,nrows=size,col=c,ncols=size),factor,size)/100))
  #r<-setExtent(r,extent(raster(paste0(Sys.getenv("CN_HOME"),'/Models/Synthetic/Density/temp_raster_pop.asc'))))
  #writeRaster(r,paste0(Sys.getenv("CN_HOME"),'/Models/Synthetic/Density/temp_raster_pop.asc'),format="ascii",overwrite=TRUE)
}

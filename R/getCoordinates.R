getCoordinates <-
function(file,r,c){
  raw <- raster(file)
  return(spTransform(xyFromCell(raw,cellFromRowCol(raw,rownr = r,colnr = c),spatial = T),CRS("+proj=longlat +datum=WGS84")))
}

# Student: William Schuch & Rik van Berkum
# Team: Geodetic Engineers of Utrecht
# Student#: 901120-751-050 & 931112-059-020
# Institute: Wageningen University and Research
# Course: Geo-scripting
# Course code: GRS-33806
# Date: 2016-01-07

minusRaster <- function(x, y, plot=FALSE) { 
	# Function to substract 2 rasterLayers
	z <- x - y
	if (plot) {
		plot(z)
	}
	return(z)
}
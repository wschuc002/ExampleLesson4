# Student: William Schuch & Rik van Berkum
# Team: Geodetic Engineers of Utrecht
# Student#: 901120-751-050 & 931112-059-020
# Institute: Wageningen University and Research
# Course: Geo-scripting
# Course code: GRS-33806
# Date: 2016-01-07
# main.R


rm(list = ls())  # Clear the workspace!
ls() ## no objects left in the workspace

# Installing packages
#install.packages(c("raster", "spatstat", "rgeos", "googleVis", "zoo", "lubridate"))

# Import packages
library(raster)
library(sp)
# Source functions
source('R/ageCalculator.R')
source('R/HelloWorld.R')
source('R/minusRaster.R')

HelloWorld('Sir William')
ageCalculator(1990)

# import dataset
r <- raster(system.file("external/rlogo.grd", package="raster")) 
r2 <- r 
# Filling the rasterLayer with new values.
r2[] <- (1:ncell(r2)) / 10
# Performs the calculation
r3 <- minusRaster(r, r2) 
# Plot the new raster
plot(r3)

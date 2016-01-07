# Student: William Schuch & Rik van Berkum
# Team: Geodetic Engineers of Utrecht
# Student#: 901120-751-050 & 931112-059-020
# Institute: Wageningen University and Research
# Course: Geo-scripting
# Course code: GRS-33806
# Date: 2016-01-07

ageCalculator <- function(x) {
	# Function to calculate age from birth year
	# x (numeric) is the year you were born
	if(!is.numeric(x)) {
		stop("x must be of class numeric")
	} else { # x is numeric
		# Get today's date
		date <- Sys.Date()
		# extract year from date and subtract
		year <- as.numeric(format(date, "%Y"))
		if(year <= x) {
			stop("You aren't born yet")
		}
		age <- year - x
	}
	return(age)
}
# Student: William Schuch & Rik van Berkum
# Team: Geodetic Engineers of Utrecht
# Student#: 901120-751-050 & 931112-059-020
# Institute: Wageningen University and Research
# Course: Geo-scripting
# Course code: GRS-33806
# Date: 2016-01-07

HelloWorld <- function (x) {
	# Puts Hello in front of the input character
	if (is.character(x)) {
		hello <- sprintf('Hello %s', x)
	} else {
		hello <- warning('Object of class character expected for input')
	}
	return(hello)
}

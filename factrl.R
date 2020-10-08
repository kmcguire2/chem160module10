factrl <- function(n) {
	if (n == 1) return(1) #if the value passed to the function is 1, return itself
	return(n*factrl(n-1)) #if n is not 1
}
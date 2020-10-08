#if ndice does not exist, stop the program
if (!exists("ndice")){
	stop("You need to set ndice")
}

rolls <- 1:6
nrolls <- 10000
total <- 0

for (i in 1:nrolls) {
	#add the values of the two highest dice rolls
	roll <- sum(sort(sample(rolls, ndice, replace = TRUE), decreasing = TRUE) [1:2])
	#add the current roll to the running total
	total <- total + roll
}

cat("Average score", total/nrolls, "\n")  #prints results
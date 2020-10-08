func <- function(x) {
     return(-x^2*exp(-3*x))
}
opt <- optimize(func,c(0.,5.)) #optimized funtion for the range 0 to 5
cat(opt$minimum,opt$objective)  #print the minimum and y output
plot(func,0,5) #plot from x=0 to x = 5
abline(h=opt$objective,col=2) #horizontal line at the y output, color 2 = red
abline(v=opt$minimum,col=2) #vertical line at the x minimum, color 2 = red
#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
} #Made a function, and calling it in the ggplot()

N0 <-  879
  
r <- 1.004e-02 #from Linear model 1, which simulated the exponential phase of the culture
  
K <- 6E+10
#Given the input values for the function "logistic_fun"

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')



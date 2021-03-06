##################################################################
# Simulating learning data
# Author: Daniel Noble
# Date: 12 July 2017
# Notes: Will generate some simulated data for which we
# can run models on later down the road for learning purposes.
##################################################################

# Parameters for simulations
	     k = 40 	# Number of individuals 
	     n = 30     # Number of trials or repeated measurements for each individual 
	  trtE = 2  	# Treatment effect we will model
	trialE = 0.4 	# Often there are very strong trial effects, so we will include this
	  IntE = 0.3 	# Interaction coefficient
	    bo = -8		# Individual intercepts

# Create some predictors we need
	  trt <- rep(c(1,0), each = (k*n)/2)
	trial <- rep(1:30, k)
	indVI <- rep(rnorm(k, 0, sqrt(0.64)), each = n)
	indSL <- rep(rnorm(k, 0, sqrt(0.25)), each = n)
	  ind <- as.character(rep(1:k, each = n))

# Generate the probabilities based on the predictors 
	prob <- exp((bo) + (trtE)*trt + trialE*trial) / (1 + exp((bo) + (trtE)*trt + trialE*trial))

# Have a look at the 'true' data
	data <- data.frame(ind, trial, trt, prob)
	lattice::xyplot(prob ~ trial | trt, data = data)

# Simulate some choice data based on the probabilities for each observation.
	choices <- rbinom(k*n, 1, prob)
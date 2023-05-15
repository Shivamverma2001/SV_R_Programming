# Set seed for reproducibility
set.seed(110)

# Create example data
#rnorm(n,mean,sd) n is no of observations, mean is the mean value by 
#default is 0
#sd is standard devivation by default is 1
data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)
data
# Column names
#paste0 used to concatenate all elements without a separator.
colnames(data) <- paste0("col", 1:10)
rownames(data) <- paste0("row", 1:10)

# Draw a heatmap
heatmap(data)	

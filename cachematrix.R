## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## initialize variables
## create get and set methods to set and return the value of the matrix as well as return and calculate the Inverse of the matrix. 
# The set inverse function calls the solve function to calculate the inverse.
}


## Write a short comment describing this function

## The cache solve function calls the the get inverse function and checks if the value returned is an empty matrix (inverse has not been computed) or a matrix (inverse has been computed)
## if the inverse has previously been computed then it returns the cached value of the inverse. Otherwise it calculates the inverse and caches it. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

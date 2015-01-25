## Calculate and cache inverse of matrix to reduce time taken in future iterations

## store the matrix & its inverse
makeCacheMatrix <- function(x = matrix()) {
## initialize variables
m <- NULL

## create get and set methods to set and return the value of the matrix as well as return and calculate the Inverse of the matrix. 

        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x

# The set inverse function calls the solve function to calculate the inverse.
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## The cacheSolve function calls the the get inverse function and checks if the value returned is an empty matrix (inverse has not been computed) or a matrix (inverse has been computed)
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()

## if the inverse has previously been computed then it returns the cached value of the inverse. Otherwise it calculates the inverse and caches it. 
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inverse(data, ...)
        x$setinverse(m)
        m
}

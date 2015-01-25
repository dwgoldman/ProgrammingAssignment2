## makeCacheMatrix: This function creates a special "matrix" object that can 
## cache its inverse.  By caching the matrix inverse, it becomes available for
## use by other functions and saves time when the matrix inverse is needed.

## cacheSolve: This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.


## caches the inverse of a matrix.  Uses the solve function to calculate the inverse

makeCacheMatrix <- function(x = matrix()) {

  
}


## computes the inverse of the matrix returned by makeCacheMatrix. Uses the inverse
## from the cache if the inverse has already been calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
}

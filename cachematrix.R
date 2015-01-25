## makeCacheMatrix: This function creates a special "matrix" object that can 
## cache its inverse.  By caching the matrix inverse, it becomes available for
## use by other functions and saves time when the matrix inverse is needed.

## cacheSolve: This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.


## caches the inverse of a matrix.  Uses the solve function to calculate the inverse
## returns a list with functions that
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the matrix inverse
## 4.get the value of the matrix inverse


makeCacheMatrix <- function(x = matrix()) {
  minv <- matrix()
  
  ## define the set() function
  set <- function(y) {
    x <<- y
    minv <<- matrix()
  }

  ## define the get() function
  get <- function() x
  
  ## define the set matrix inverse function
  setminv <- function() minv <<- solve
  
  ## define the get matrix inverse function
  getminv <- function() minv
  
  ## return the list
  list(set = set, get = get,
       setminv = setminv,
       getminv = getminv)
}


## computes the inverse of the matrix returned by makeCacheMatrix. Uses the inverse
## from the cache if the inverse has already been calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  minv <- x$getminv()
  
  ##test if the matrix inverse is cached already
  if(!is.na(minv)) {
    message("getting cached data")
    return(minv)
  }
  
  ## calculate matrix inverse
  data <- x$get()
  minv <-solve(data, ...)
  x$setminv(minv)
  minv
}

## The 2 functions below are used to get and set matrix values and inverse functions.

## The makeCacheMatrix function has a set of getter and setter functions to set matrices and set inverse functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <- NULL
  }
  get <- function() x
  setm <- function(mean) m <<- mean
  getm <- function() m
  list(set=set,get=get,setm=setm,getm=getm)
  
}


## cacheSolve function is used to check whether the cache of the inverse matrix already exists. Else it calcualtes the inverse and stores it in cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}

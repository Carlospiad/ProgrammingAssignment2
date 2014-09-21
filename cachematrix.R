## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix() stores the inverse of a matrix 'x'

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y) {
            x <<- y
            inv <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) inv <<- solve
      getinverse <- function() inv
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


##cacheSolve() returns the inverse of matrix 'x'

cacheSolve <- function(x, ...) {
      inv <- x$getinverse()
      if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
      }
      data <- x$get()
      inv <- inv(data, ...)
      x$setinv(inv)
      inv
}

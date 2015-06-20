## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix object that can store its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL # the inverse has not been computed

  # change the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL # reset inverse
  }

  # return the matrix
  get <- function() {
    x
  }

  # set the inverse of the matrix (should only be called by cacheSolve)
  setInverse <- function(inverse) {
    inv <<- inverse
  }

  # return the matrix inverse
  getInverse <- function() {
    inv
  }

  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Returns the inverse of a matrix, caching it if it has not been computed
#  previously.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()

  if (!is.null(inv)) { # inverse has already been computed
    print("getting cached inverse")
    return(inv)
  }

  inv <- solve(x$get(), ...) # compute the inverse
  x$setInverse(inv)
  inv
}

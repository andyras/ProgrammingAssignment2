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

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

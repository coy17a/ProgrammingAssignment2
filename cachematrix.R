## Put comments here that give an overall description of what your
## Programing Assigment 2 Coursera R Prograing course
##By Alejandro Coy Jan 30/2019

## This function create a matrix object with set,get,setinv, and getinv functions

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inverse <<- inv
  getinv <- function() inverse
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  }

## This function returns the invers of matrix assuing is a square invertible matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setinv(inverse)
  inverse
}

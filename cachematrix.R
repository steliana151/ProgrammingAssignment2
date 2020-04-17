## Functions that have the role to cache the inverse of a matrix.

## With this function we create a special matrix object that can cache its inverse.
## For creating a special matrix m you execute \code{m <- makeCacheMatrix(x)}
s <- makeCacheMatrix(x = matrix(4, 6, 6, 4), ncol = 2, nrow = 2) {
  m <- NULL
  set <- function(y) {
    x <<- y
  s <<- NULL
  }
  
get <- function() x
setInverse <- function(Inverse)
  s <<-Inverse
getInverse <-function() s
list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}



## The function that computes the inverse of the created special "matrix", 
## returned by makeCacheMatrix above.
##This following function will compute the inversion of the created matrix.
## One of the following situation can happen: if the value is NULL 
## it will be calculated using the function or if the value exists, it will be taken from cache:

cacheSolve <- function(x,...) {
        x <- x$getSolve()
  if(!is.null(a)){
    message("getting cached data")
    return(s)
  }
  matrix <- x$get()
  s <- solve(matrix)
  x$setSolve(s)
  x      
}


## Functions used to cache the inverse of a matrix.


## With this function we create a special matrix object that can cache its inverse.
## For creating a special matrix i you use code{i <- makeCacheMatrix(x)} 
## The created matrix have 4 elements, in two rows and two columns and was made following the next functions:
    ## set() it's used to set the value of the matrix
    ## get() it's used to return the value of the matrix
    ## setInverse() it's sets the inverse of the matrix
    ## getInverse() returns the inverse of the matrix
i <- makeCacheMatrix(x = matrix(1, 2, 2, 1), ncol = 2, nrow = 2) {   
    i <- NULL                     
    set <- function(y) {              
    x <<- y
    i <<- NULL
  }
  
  get <- function() x               
  setInverse <- function(inverse)   
    i <<- Inverse
  getInverse <-function() i         
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

        
## The cacheSolve function it's used to compute the inverse of the created "matrix".
## If the inverse has not been calculated, cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x,...) {
  i <- x$getSolve()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  matrix <- x$get()
  i <- solve(matrix, ...)
  x$setSolve(i)
  i      
## Return a matrix that is the inverse of 'i'
}



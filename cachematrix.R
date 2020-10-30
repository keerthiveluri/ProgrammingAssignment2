setwd('C:/Users/keert/Documents/Coursera-R')
makeCacheMatrix <- function(x = matrix((sample(1:100,9),3,3)) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function(y) 
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
   inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached result")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv 
}

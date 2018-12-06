##Program to use "makeCacheMatrix" function to creates a special "matrix" object by Krishnaveni##
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
##makeCacheMatrix Program End- Krishnaveni##

##Program to use "cacheSolve" function that will compute the inverse of the special "matrix" returned by makeCacheMatrix by Krishnaveni ##


cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
##cacheSolve Program End- Krishnaveni##

## The functions are used to get the inverse of a matrix which you are sure
## the matrix has an inverse.

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  print(environment())
  evn <- environment()
  print(parent.env(evn))
  set<-function(y){
    x<<-y#x is the value y is the object
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  getevn<- function() environment()
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix,
       getevn=getevn,
  )
}

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  x <- rbind(c(1, -0.25), c(-0.25, 1))
  matrix<-x$get
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
cachesolve(x)



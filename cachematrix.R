# R-Programming-Assignment-2-


makeCacheMatrix <- function(x = matrix()) {

 m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
 
  get<-function()x
  setinverse<- function (solve)
    m <<- solve
  getinverse<- function ()
    m
 
  list(set=set, get = get ,
       setinverse = setinverse, 
       getinverse = getinverse)

}


## get inverse of the martix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m<-x$getinverse()
  if(!is.null(m)){
    message(" result ")
    return (m)
    
  }
  data<-x$get ()
  m<-solve(data,...)
  x$setinv(m)
  m
        
        
}

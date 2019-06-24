## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The functions creates a matrix object to cache its inverse matrix
makeCacheMatrix <- function(x = matrix()) {## the default of the argument is set to be matrix
        
        inv <- NULL ## the inital of inv is set to be NULL
        
        set <- function(y){
                x <<- y
                inv <<- NULL 
        }
        
        get <- function() x ##the get function returns the matrix
        
        setinverse <- function(inverse) inv <<- inverse
        
        getinverse <- function() inv ## obtain the inverse 
        
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                retern(inv)
        }
        
        data <- x$get()
        
        inv <- solve(data, ...)
        
        x$setinverse(inv)
        
        inv
}        

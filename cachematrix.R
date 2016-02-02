## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is funxtion to build specail matrix to store the inverse
##have some special function
##set,set the value of the matrix
##get,get the value of the matrix
##setInverse, set the inverse of the matrix
##getInverse, get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) m <<- inverse
	getInverse <- function() m
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## calculate inverse, if it already calculate, return message and skip calculate 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
	if(!is.null(m)){
		message("getting cache data")
		return(m)
	}
	data <- x$get()
	m <- solve(data)
	x$setInverse(m)
	m
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	
	# m will store cached data
	m <- null
	#setter for the matrix
	set <- function(y){
	x<<-y
	m <<- null
	}
	#getter for the matrix
	get <- function() x
	#setter and getters for the inverse
	setMartix <- function(inverse) m <<- inverse
	getMatrix <- function() m

	list(set = set, get = get, setMartix = setMartix, getMatrix = getMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m  <- x$getMatrix()
	
	# Checks for the cached data. If m is not null it returns m
	if(!is.null(m)){
		mesage("getting cached data")
		return(m)
		}
	#Will run if m is not returned in the above if statment
	#giving us the inverse of m
		data <- x$get()
		m <- solve(data, ...)
		# Caches the inverse
		x$setMatrix(m)
		#returns the inverse
		m
		
}

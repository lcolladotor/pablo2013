#' Run the code for the question
#'
#' This function runs the code from the question and prints the expected answers.
#'
#' @return Null
#'
#' @examples
#' \dontrun{
#' ## Run the code and see the answers displayed
#' pabloCode()
#' @export

pabloCode <- function() {
	## Initialization of j
	j <- 0
	for(i in seq(from=1, to=10, by=1)) {
		## Note that x %% y is 
		## x mod y
		
		## Pre-evaluation of j
		j <- j + i %% 2
		## Post-evaluation of j
	
		## Code question 1
		if(i == 5) {
			print(paste("When i = 5, the value of j (post evaluation of j) is", j))
		}
	
	}
	## Code question 2? Final value of j
	print(paste("The final value of j is", j))
	
	## Done
	return(invisible(NULL))
}

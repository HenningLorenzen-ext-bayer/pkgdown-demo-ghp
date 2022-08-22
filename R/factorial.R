#' Compute factorial
#'
#' @param n argument to factorial function
#'
#' @return factorial of `n`
#' @export
#'
#' @examples
#' factorial(0)
#' factorial(1)
#' factorial(4)
#' @md
factorial <- function(n) {
  # TODO: use backports::stopifnot()
  n <- checkmate::assert_int(n, lower = 0, coerce = TRUE)

  if (n %in% c(0L, 1L)) return(1L)
  else {
    i <- n
    r <- 1L
    while (i > 1L) {
      r <- r * i
      i <- i - 1
    }
    return(r)
  }
}

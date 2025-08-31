#' Get the y coordinate of a Conquer Chess square
#' @export
get_y <- function(square) {
  testthat::expect_equal(nchar(square), 2)
  character <- stringr::str_sub(square, 1, 1)
  if (character == 'a') return(0)
  if (character == 'b') return(1)
  if (character == 'c') return(2)
  if (character == 'd') return(3)
  if (character == 'e') return(4)
  if (character == 'f') return(5)
  if (character == 'g') return(6)
  testthat::expect_equal(character, 'h')
  7
}

#' Get the x coordinate of a Conquer Chess square
#' @export
get_x <- function(square) {
  testthat::expect_equal(nchar(square), 2)
  as.integer(stringr::str_sub(square, 2, 2)) - 1
}

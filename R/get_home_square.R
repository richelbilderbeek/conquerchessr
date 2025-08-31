#' Get the cursor home square
#' @export
get_home_square <- function(color) {
  if (color == "white") {
    return("e1")
  }
  testthat::expect_equal(color, "black")
  "e8"
}

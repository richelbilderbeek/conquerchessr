#' Create a line to select the current square
#' @export
create_select_line <- function(color) {
  if (color == "white") {
    r"(xdotool::keystroke("q"))"
  } else {
    testthat::expect_equal(color, "black")
    r"(xdotool::keystroke("u"))"
  }
}

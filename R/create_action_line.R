#' Create script line for an action
#' @export
create_action_line <- function(action, color)
{
  key <- NA
  if (color == "white") {
    if (action == 1) {
      key <- "q"
    } else if (action == 2) {
      key <- "e"
    } else if (action == 3) {
      key <- "z"
    } else {
      testthat::expect_equal(action, 4)
      key <- "c"
    }
  } else {
    testthat::expect_equal(color, "black")
    if (action == 1) {
      key <- "u"
    } else if (action == 2) {
      key <- "o"
    } else if (action == 3) {
      key <- "m"
    } else {
      testthat::expect_equal(action, 4)
      key <- "."
    }
  }
  paste0("xdotool::keystroke(\"", key, "\")")


}

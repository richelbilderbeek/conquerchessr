#' Create script lines
#'
#' A cursor always go:
#'
#' - horizontal, \link{create_horizontal_lines}
#' - vertical
#' - select
#' - horizontal
#' - vertical
#' - do action
#' - horizontal
#' - vertical
#'
#' The cursor will always end up back at the original position
#' @export
create_vertical_lines <- function(from = "e2", to = "e4", color = "white")
{
  y1 <- conquerchessr::get_y(from)
  y2 <- conquerchessr::get_y(to)
  if (y1 == y2) return(c())
  testthat::expect_true(y1 != y2)
  key <- NA
  if (y1 < y2) {
    # Go down
    if (color == "white") {
      key <- "s"
    } else {
      testthat::expect_equal(color, "black")
      key <- "k"
    }
  } else {
    # Go up
    if (color == "white") {
      key <- "w"
    } else {
      testthat::expect_equal(color, "black")
      key <- "i"
    }
  }
  n <- abs(y1 - y2)
  lines <- c()
  for (i in seq_len(n)) {
    line <- paste0("xdotool::keystroke(\"", key, "\")")
    lines <- c(lines, line)
  }
  lines
}

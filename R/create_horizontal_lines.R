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
create_horizontal_lines <- function(from = "e2", to = "e4", color = "white")
{
  x1 <- conquerchessr::get_x(from)
  x2 <- conquerchessr::get_x(to)
  if (x1 == x2) return(c())
  testthat::expect_true(x1 != x2)
  key <- NA
  if (x1 < x2) {
    # Go right
    if (color == "white") {
      key <- "d"
    } else {
      testthat::expect_equal(color, "black")
      key <- "l"
    }
  } else {
    # Go left
    if (color == "white") {
      key <- "a"
    } else {
      testthat::expect_equal(color, "black")
      key <- "j"
    }
  }
  n <- abs(x1 - x2)
  lines <- c()
  for (i in seq_len(n)) {
    line <- paste0("xdotool::keystroke(\"", key, "\")")
    lines <- c(lines, line)
  }
  lines
}

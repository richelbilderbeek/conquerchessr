#' Create the movement lines in a script
#' @export
create_movement_lines <- function(from, to, color) {
  c(
    conquerchessr::create_horizontal_lines(from = from, to = to, color = color),
    conquerchessr::create_vertical_lines(from = from, to = to, color = color)
  )
}

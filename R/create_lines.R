#' Create script lines
#'
#' A cursor always go:
#'
#' - movement, \link{create_movement_lines}
#' - select
#' - movement, \link{create_movement_lines}
#' - do action
#' - movement, \link{create_movement_lines}
#'
#' The cursor will always end up back at the original position
#' @export
create_lines <- function(from, to, action, color, sleep_time_secs)
{
  home_square <- conquerchessr::get_home_square(color = color)

  c(
    conquerchessr::create_movement_lines(from = home_square, to = from, color = color),
    conquerchessr::create_select_line(color = color),
    conquerchessr::create_movement_lines(from = from, to = to, color = color),
    conquerchessr::create_action_line(action = action, color = color),
    conquerchessr::create_movement_lines(from = to, to = home_square, color = color),
    paste0("Sys.sleep(", sleep_time_secs, ")")
  )
}

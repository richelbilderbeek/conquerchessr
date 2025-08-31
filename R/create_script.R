#' Create the script of a game
#' @export
create_script <- function(filename, sleep_time_secs = 8.0) {
  readr::write_lines(conquerchessr::create_script_text(sleep_time_secs = sleep_time_secs), filename)
}

test_that("e2-e4", {
  created <- create_horizontal_lines(from = "e2", to = "e4", color = "white")
  expected <- c(
    r"(xdotool::keystroke("d"))", # e3
    r"(xdotool::keystroke("d"))" # e4
  )
})

test_that("e7-e5", {
  created <- create_horizontal_lines(from = "e7", to = "e5", color = "black")
  expected <- c(
    r"(xdotool::keystroke("j"))", # e6
    r"(xdotool::keystroke("j"))" # e5
  )
})

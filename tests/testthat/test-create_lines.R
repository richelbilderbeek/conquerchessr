test_that("use", {
  created <- create_lines(from = "e2", to = "e4", action = 1, color = "white")
  expected <- c(
    r"(xdotool::keystroke("d"))", # e2
    r"(xdotool::keystroke("q"))", # select
    r"(xdotool::keystroke("d"))", # e3
    r"(xdotool::keystroke("d"))", # e4
    r"(xdotool::keystroke("q"))", # go
    r"(xdotool::keystroke("a"))", # e3
    r"(xdotool::keystroke("a"))", # e2
    r"(xdotool::keystroke("a"))" # e1
  )
  expect_equal(created, expected)
})

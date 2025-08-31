test_that("e2-e4", {
  created <- create_vertical_lines(from = "a1", to = "c1", color = "white")
  expected <- c(
    r"(xdotool::keystroke("s"))", # b1
    r"(xdotool::keystroke("s"))" # c1
  )
})

test_that("h8-f8", {
  created <- create_vertical_lines(from = "h8", to = "f8", color = "black")
  expected <- c(
    r"(xdotool::keystroke("i"))", # g8
    r"(xdotool::keystroke("i"))" # f8
  )
})

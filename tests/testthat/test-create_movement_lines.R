test_that("use", {
  created <- create_movement_lines(from = "b1", to = "c3", color = "white")
  expected <- c(
    r"(xdotool::keystroke("d"))", # b2
    r"(xdotool::keystroke("d"))", # b3
    r"(xdotool::keystroke("s"))"  # c3
  )
  expect_equal(created, expected)
})

test_that("use", {
  expect_equal(
    create_select_line("white"),
    r"(xdotool::keystroke("q"))"
  )
  expect_equal(
    create_select_line("black"),
    r"(xdotool::keystroke("u"))"
  )
})

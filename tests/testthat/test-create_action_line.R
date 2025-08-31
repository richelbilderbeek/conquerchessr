test_that("use", {
  expect_equal(
    create_action_line(action = 1, color = "white"),
    r"(xdotool::keystroke("q"))"
  )
  expect_equal(
    create_action_line(action = 2, color = "white"),
    r"(xdotool::keystroke("e"))"
  )
  expect_equal(
    create_action_line(action = 3, color = "white"),
    r"(xdotool::keystroke("z"))"
  )
  expect_equal(
    create_action_line(action = 4, color = "white"),
    r"(xdotool::keystroke("c"))"
  )

  expect_equal(
    create_action_line(action = 1, color = "black"),
    r"(xdotool::keystroke("u"))"
  )
  expect_equal(
    create_action_line(action = 2, color = "black"),
    r"(xdotool::keystroke("o"))"
  )
  expect_equal(
    create_action_line(action = 3, color = "black"),
    r"(xdotool::keystroke("m"))"
  )
  expect_equal(
    create_action_line(action = 4, color = "black"),
    r"(xdotool::keystroke("."))"
  )

})

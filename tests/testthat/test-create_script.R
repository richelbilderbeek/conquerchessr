test_that("use", {

  if (1 == 2) {
    create_script("~/play_game.R", sleep_time_secs = 1.0)

  }
  filename <- tempfile()
  expect_false(file.exists(filename))
  create_script(filename)
  expect_true(file.exists(filename))
})


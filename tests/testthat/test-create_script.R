test_that("use", {
  filename <- tempfile()
  expect_false(file.exists(filename))
  create_script(filename)
  expect_true(file.exists(filename))
})

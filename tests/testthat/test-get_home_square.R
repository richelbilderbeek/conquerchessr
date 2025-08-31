test_that("use", {
  expect_equal(
    get_home_square(color = "white"),
    "e1"
  )
  expect_equal(
    get_home_square(color = "black"),
    "e8"
  )
})

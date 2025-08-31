test_that("use", {
  expect_equal(get_x(square = "a1"), 0)
  expect_equal(get_x("b1"), 0)
  expect_equal(get_x("b8"), 7)
})

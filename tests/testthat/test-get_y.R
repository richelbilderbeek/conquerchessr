test_that("use", {
  expect_equal(get_y("a1"), 0)
  expect_equal(get_y("b1"), 1)
  expect_equal(get_y("b8"), 1)
})

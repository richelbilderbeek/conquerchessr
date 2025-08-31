test_that("use", {
  lines <- create_script_text()
  expect_equal(
    lines[1],
    "message(\"You have three seconds to put the Conquer Chess window in focus\")"
  )
  expect_equal(
    lines[2],
    "Sys.sleep(3.0) # seconds"
  )
})

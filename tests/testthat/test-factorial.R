test_that("Negative arguments are rejected", {
  expect_error(object = factorial(-1),
               regexp = "Assertion on 'n' failed: Element 1 is not >= 0.",
               fixed = TRUE)
})


test_that("Fractional arguments are rejected", {
  expect_error(object = factorial(0.5),
               regexp = "Assertion on 'n' failed: Must be of type 'single integerish value', not 'double'.",
               fixed = TRUE)
})


test_that("Values for 0 and 1 are correct", {
  expect_equal(factorial(0), 1)
  expect_equal(factorial(1), 1)
})

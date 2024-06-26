test_that("multiple animals errors", {
  expect_no_error(animal_sounds("dog", "woof"))
  expect_error(animal_sounds(c("dog", "cat"), "woof"))
})

test_that("only single sound accepted", {
  expect_error(animal_sounds(c("dog"), c("woof", "meow")), class = "error_not_single_sound")
  expect_no_error(animal_sounds(c("dog"), c("meow")))
})

test_that("output snapshot", {
  expect_snapshot(animal_sounds("dog", "woof"))
})

test_that("giraffe is silent", {
  giraffe <- animal_sounds("giraffe")
  expect_equal(giraffe, "The giraffe makes no sound")
})

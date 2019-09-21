
test_that("use_vars_template works", {

  flatly <- file.path(tempdir(), "flatly.scss")
  default <- file.path(tempdir(), "default.scss")

  use_vars_template(
    output_file = flatly,
    theme = "flatly"
  )
  use_vars_template(
    output_file = default,
    theme = "default"
  )

  expect_true(file.exists(flatly))
  expect_true(file.exists(default))
  unlink(flatly)
  unlink(default)
})



test_that("vars_file works", {

  vars <- vars_file(input_file = system.file(
    "assets/bootstrap3/default/stylesheets/bootstrap/_variables.scss",
    package = "fresh"
  ))

  expect_is(vars, "sass_file")
  expect_is(vars, "fresh_sass_vars")

})



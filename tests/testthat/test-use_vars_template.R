
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

  vars <- bs_vars_file(input_file = system.file(
    "assets/bootstrap-3.4.1/default/stylesheets/bootstrap/_variables.scss",
    package = "fresh"
  ))

  expect_is(vars, "sass_file")
  expect_is(vars, "bootstrap_vars_file")

})


test_that("create_theme works with bs_vars_file", {

  my_vars <- file.path(tempdir(), "custom-vars.scss")
  my_theme <- file.path(tempdir(), "theme.css")

  # Open template and edit variables
  use_vars_template(
    output_file = my_vars,
    theme = "flatly"
  )
  expect_true(file.exists(my_vars))

  # Create new theme based on the modified template
  create_theme(
    theme = "flatly",
    bs_vars_file(input_file = my_vars),
    output_file = my_theme
  )
  expect_true(file.exists(my_theme))

  # Clean up
  unlink(my_vars)
  unlink(my_theme)

})


test_that("create_theme works with bs_vars_file and vars", {

  my_vars <- file.path(tempdir(), "custom-vars.scss")
  my_theme <- file.path(tempdir(), "theme.css")

  # Open template and edit variables
  use_vars_template(
    output_file = my_vars,
    theme = "flatly"
  )
  expect_true(file.exists(my_vars))

  # Create new theme based on the modified template
  create_theme(
    theme = "default",
    bs_vars_alert(padding = "5px"),
    bs_vars_file(input_file = my_vars),
    output_file = my_theme
  )
  expect_true(file.exists(my_theme))

  # Clean up
  unlink(my_vars)
  unlink(my_theme)

})

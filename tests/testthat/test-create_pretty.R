
test_that("create_pretty create a file", {

  tmp <- file.path(tempdir(), "theme.css")

  create_pretty(
    default = "#fff",
    primary = "#fff",
    success = "#fff",
    output_file = tmp
  )

  expect_true(file.exists(tmp))
  unlink(tmp)
})



test_that("create_pretty return CSS", {

  theme <- create_pretty(
    default = "#fff",
    primary = "#fff",
    success = "#fff",
    output_file = NULL
  )

  expect_is(theme, "css")
})



test_that("use_pretty return HTML dependency", {

  expect_is(use_pretty("pretty.css"), "html_dependency")
})



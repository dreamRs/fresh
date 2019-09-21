
test_that("adminlte_color works", {

  vars <- adminlte_color(light_blue = "#fff",red = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "adminlte_vars")
  expect_length(vars, 2)
})


test_that("adminlte_sidebar works", {

  vars <- adminlte_sidebar(width = "400px", dark_bg = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "adminlte_vars")
  expect_length(vars, 2)
})


test_that("adminlte_global works", {

  vars <- adminlte_global(content_bg = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "adminlte_vars")
  expect_length(vars, 1)
})

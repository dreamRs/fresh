
test_that("search_vars_bs4dash works", {

  vars <- search_vars_bs4dash()

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
})


test_that("search_vars_bs4dash works with pattern", {

  vars <- search_vars_bs4dash(pattern = "navbar")

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
  expect_true(all(grepl(pattern = "navbar", x = vars$variable)))
})



test_that("search_vars_bs works", {

  vars <- search_vars_bs()

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
})



test_that("search_vars_bs works with pattern", {

  vars <- search_vars_bs(pattern = "navbar")

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
  expect_true(all(grepl(pattern = "navbar", x = vars$variable)))
})



test_that("search_vars_bs works with theme", {

  vars <- search_vars_bs(theme = "flatly")

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
})



test_that("search_vars_adminlte2 works", {

  vars <- search_vars_adminlte2()

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
})



test_that("search_vars_adminlte2 works with pattern", {

  vars <- search_vars_adminlte2(pattern = "sidebar")

  expect_is(vars, "data.frame")
  expect_true(nrow(vars) > 0)
  expect_true(all(grepl(pattern = "sidebar", x = vars$variable)))
})

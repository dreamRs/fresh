
test_that("bs4dash_vars works", {

  vars <- bs4dash_vars(default_background_color = "#FFF", "default-color" = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_button works", {

  vars <- bs4dash_button(default_background_color = "#FFF", default_color = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_color works", {

  vars <- bs4dash_color(blue = "blue", navy = "navy")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_font works", {

  vars <- bs4dash_font(size_base = "15px", size_lg = "24px")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_layout works", {

  vars <- bs4dash_layout(font_size_root = "14rem", sidebar_width = "500px")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_sidebar_dark works", {

  vars <- bs4dash_sidebar_dark(bg = "#FFF", hover_bg = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_sidebar_light works", {

  vars <- bs4dash_sidebar_light(bg = "#FFF", hover_bg = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_status works", {

  vars <- bs4dash_status(primary = "#000", secondary = "#FFF")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


test_that("bs4dash_yiq works", {

  vars <- bs4dash_yiq(contrasted_threshold = 200, text_dark = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bs4dash_vars")
  expect_length(vars, 2)
})


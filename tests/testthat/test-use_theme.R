
test_that("use_theme works with file", {
  tag <- use_theme(theme = "theme.css")
  expect_is(tag, "shiny.tag")
  expect_identical(tag$children[[1]]$attribs$href, "theme.css")
})


test_that("use_theme works with inline css", {
  tag <- use_theme(create_theme(
    theme = "default",
    bs_vars_global(
      body_bg = "#000",
      text_color = "#FFF"
    ),
    bs_vars_wells(
      bg = "#2E2E2E"
    )
  ))
  expect_is(tag, "shiny.tag")
  expect_identical(tag$children[[1]]$name, "style")
})

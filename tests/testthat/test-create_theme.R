
test_that("Path to SCSS is valid", {

  expect_is(bootstrap_scss(), "sass_file")
  expect_is(bootswatch_vars_scss("flatly"), "sass_file")
  expect_is(bootswatch_scss("flatly"), "sass_file")
  expect_is(adminlte2_scss(), "sass_file")
  expect_is(adminlte2_skin_scss(), "sass_file")
  expect_is(adminlte3_scss(), "sass_file")

})



test_that("create_theme create a file", {

  tmp <- file.path(tempdir(), "theme.css")

  create_theme(
    theme = "default",
    bs_vars_color(
      brand_primary = "#75b8d1",
      brand_success = "#c9d175",
      brand_info = "#758bd1",
      brand_warning = "#d1ab75",
      brand_danger = "#d175b8"
    ),
    bs_vars_navbar(
      default_bg = "#75b8d1",
      default_color = "#FFFFFF",
      default_link_color = "#FFFFFF",
      default_link_active_color = "#FFFFFF"
    ),
    output_file = tmp
  )

  expect_true(file.exists(tmp))
  unlink(tmp)
})


test_that("create_theme with assets", {

  tmp_dir <- tempfile()
  dir.create(tmp_dir)
  tmp <- file.path(tmp_dir, "theme.css")

  expect_warning(create_theme(
    theme = "default",
    bs_vars_color(
      brand_primary = "#75b8d1",
      brand_success = "#c9d175",
      brand_info = "#758bd1",
      brand_warning = "#d1ab75",
      brand_danger = "#d175b8"
    ),
    bs_vars_navbar(
      default_bg = "#75b8d1",
      default_color = "#FFFFFF",
      default_link_color = "#FFFFFF",
      default_link_active_color = "#FFFFFF"
    ),
    output_file = tmp,
    include_assets = TRUE
  ))

  expect_false(file.exists(tmp))
  expect_true(file.exists(file.path(tmp_dir, "stylesheets", "theme.css")))
  expect_true("fonts" %in% list.files(path = tmp_dir))
  unlink(tmp_dir, recursive = TRUE)
})



test_that("create_theme return CSS", {

  theme <- create_theme(
    theme = "default",
    bs_vars_color(
      brand_primary = "#75b8d1",
      brand_success = "#c9d175",
      brand_info = "#758bd1",
      brand_warning = "#d1ab75",
      brand_danger = "#d175b8"
    ),
    bs_vars_navbar(
      default_bg = "#75b8d1",
      default_color = "#FFFFFF",
      default_link_color = "#FFFFFF",
      default_link_active_color = "#FFFFFF"
    ),
    output_file = NULL
  )

  expect_is(theme, "css")
})



test_that("works with AdminLTE vars", {

  theme <- create_theme(
    theme = "default",
    adminlte_color(light_blue = "#fff"),
    adminlte_global(content_bg = "#fff"),
    output_file = NULL
  )

  expect_is(theme, "css")
})


test_that("works with Bootswatch", {

  theme <- create_theme(
    theme = "cosmo",
    bs_vars_color(
      brand_primary = "#75b8d1",
      brand_success = "#c9d175",
      brand_info = "#758bd1",
      brand_warning = "#d1ab75",
      brand_danger = "#d175b8"
    ),
    output_file = NULL
  )

  expect_is(theme, "css")
})



test_that("dont mix BS & AdminLTE vars", {

  expect_error(create_theme(
    theme = "default",
    adminlte_color(light_blue = "#fff"),
    bs_vars_navbar(
      default_bg = "#75b8d1",
      default_color = "#FFFFFF",
      default_link_color = "#FFFFFF",
      default_link_active_color = "#FFFFFF"
    ),
    output_file = NULL
  ))

})



test_that("works with custom Bootstrap var with a warning", {

  expect_warning(theme <- create_theme(
    theme = "default",
    list("my-custom-var" = "12px"),
    bs_vars_navbar(
      default_bg = "#75b8d1",
      default_color = "#FFFFFF",
      default_link_color = "#FFFFFF",
      default_link_active_color = "#FFFFFF"
    ),
    output_file = NULL
  ))

  expect_is(theme, "css")

})



test_that("works with custom AdminLTE var with a warning", {

  expect_warning(theme <- create_theme(
    theme = "default",
    list("my-custom-var" = "12px"),
    adminlte_color(light_blue = "#fff"),
    output_file = NULL
  ))

  expect_is(theme, "css")

})



test_that("works with custom var with a warning", {

  expect_warning(theme <- create_theme(
    theme = "default",
    list("my-custom-var" = "12px"),
    output_file = NULL
  ))

  expect_is(theme, "css")

})




test_that("works with no args", {

  vars <- bs_vars_global()

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 0)
})


test_that("bs_vars works", {

  vars <- bs_vars(body_bg = "#fff", "grid-columns" = 8)

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_global works", {

  vars <- bs_vars_global(body_bg = "#fff", grid_columns = 8)

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_color works", {

  vars <- bs_vars_color(brand_primary = "#fff", brand_danger = "#fff", gray = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_navbar works", {

  vars <- bs_vars_navbar(height = "10px", default_bg = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_nav works", {

  vars <- bs_vars_nav(link_padding = "15px", link_hover_bg = "#000", disabled_link_color = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})



test_that("bs_vars_font works", {

  vars <- bs_vars_font(family_sans_serif = "Arial", size_base = "12px", size_h1 = "1000px")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_wells works", {

  vars <- bs_vars_wells(bg = "#fff", border = "#000")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_state works", {

  vars <- bs_vars_state(success_text = "#fff", info_text = "#fff", danger_bg = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_input works", {

  vars <- bs_vars_input(bg = "#fff", border_radius = "50px")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_alert works", {

  vars <- bs_vars_alert(padding = "12px", border_radius = "20px", success_bg = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_progress works", {

  vars <- bs_vars_progress(bg = "#fff", bar_color = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_panel works", {

  vars <- bs_vars_panel(bg = "#fff", body_padding = "12px", border_radius = "20px")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_modal works", {

  vars <- bs_vars_modal(md = "100%", title_padding = "12px")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_button works", {

  vars <- bs_vars_button(font_weight = "bold", default_color = "#fff", primary_bg = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_dropdown works", {

  vars <- bs_vars_dropdown(bg = "#000", border = "#FAFAFA")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_pills works", {

  vars <- bs_vars_pills(border_radius = "20px", active_link_hover_bg = "#fff", active_link_hover_color = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_tabs works", {

  vars <- bs_vars_tabs(border_color = "#000", link_hover_border_color = "#fff")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 2)
})


test_that("bs_vars_badge works", {

  vars <- bs_vars_badge(color = "#fff", bg = "#000", font_weight = "bold")

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})


test_that("bs_vars_badge works", {

  vars <- bs_vars_component(
    padding_base_vertical = "5px",
    padding_base_horizontal = "20px",
    border_radius_base = 0,
    component_active_bg = "#0B610B"
  )

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 4)
})


test_that("bs_vars_table works", {

  vars <- bs_vars_table(
    bg_accent = "lightblue",
    bg_hover = "firebrick",
    border_color = "#000"
  )

  expect_is(vars, "list")
  expect_is(vars, "fresh_sass_vars")
  expect_is(vars, "bootstrap_vars")
  expect_length(vars, 3)
})




#  ------------------------------------------------------------------------
#
# Title : Default themes
#    By : Victor
#  Date : 2020-05-01
#
#  ------------------------------------------------------------------------




# Packages ----------------------------------------------------------------

library(sass)
library(fresh)


# Bootstrap ---------------------------------------------------------------

# Wrap @import statements in .default-theme {}
sass::sass(
  input = list(
    sass::sass_file(
      input = "inst/assets/bootstrap3/default/stylesheets/_bootstrap.scss"
    )
  ),
  options = sass::sass_options(output_style = "compressed"),
  output = "vignettes/assets/bootstrap-default.min.css"
)



# Custom Bootstrap --------------------------------------------------------

# Wrap @import statements in .custom-theme {}
sass::sass(
  input = list(
    bs_vars_global(
      grid_columns = 30,
      grid_gutter_width = "15px"
    ),
    bs_vars_navbar(
      padding_horizontal = "15px",
      default_bg = "#112446",
      default_color = "#FFFFFF",
      default_link_color = "#FFFFFF",
      default_link_active_color = "#FFFFFF",
      default_link_hover_color = "#A4A4A4"
    ),
    bs_vars_button(
      font_weight = 700,
      border_radius_base = 0,
      default_color = "#112446",
      default_border = "#112446",
      primary_color = "#FFF",
      primary_bg = "#112446",
      primary_border = "#112446"
    ),
    bs_vars_color(
      brand_primary = "#112446",
      brand_success = "#7bc043",
      brand_info = "#0392cf",
      brand_warning = "#f37736",
      brand_danger = "#ee4035"
    ),
    bs_vars_state(
      success_text = "#FFF",
      success_bg = "#c9d175",
      success_border = "#c9d175",
      info_text = "#FFF",
      info_bg = "#3f2d54",
      info_border = "#3f2d54"#,
      # danger_text = "#FFF",
      # danger_bg = "#d175b8",
      # danger_border = "#d175b8"
    ),
    bs_vars_wells(
      bg = "#FFF",
      border = "#3f2d54"
    ),
    # bs_vars_nav(link_padding = "5px 25px"),
    bs_vars_tabs(
      border_color = "#112446",
      active_link_hover_bg = "#FFF",
      active_link_hover_color = "#112446",
      active_link_hover_border_color = "#112446",
      link_hover_border_color = "#112446"
    ),
    sass::sass_file(
      input = "inst/assets/bootstrap3/default/stylesheets/_bootstrap.scss"
    )
  ),
  options = sass::sass_options(output_style = "compressed"),
  output = "vignettes/assets/bootstrap-custom.min.css"
)



















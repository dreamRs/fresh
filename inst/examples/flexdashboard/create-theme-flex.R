
#  ------------------------------------------------------------------------
#
# Title : Use {fresh} with flexdashboard
#
#  ------------------------------------------------------------------------


library(fresh)


# Create an "assets" directory in your Rmd directory
dir.create("inst/examples/flexdashboard/assets")


# Create a theme using Bootswatch's Flatly theme as base
# the theme is saved as "mytheme.css" in the assets directory

create_theme(
  theme = "flatly",
  output_file = "inst/examples/flexdashboard/assets/mytheme.css",
  bs_vars_navbar(
    default_bg = "#3f2d54",
    inverse_bg = "#3f2d54",
    default_color = "#FFFFFF",
    default_link_color = "#FFFFFF",
    default_link_active_color = "#FFFFFF",
    default_link_hover_color = "#A4A4A4"
  ),
  bs_vars_color(
    gray_base = "#354e5c",
    brand_primary = "#75b8d1",
    brand_success = "#c9d175",
    brand_info = "#758bd1",
    brand_warning = "#d1ab75",
    brand_danger = "#d175b8"
  ),
  bs_vars_state(
    success_text = "#FFF",
    success_bg = "#c9d175",
    success_border = "#c9d175",
    info_text = "#FFF",
    info_bg = "#3f2d54",
    info_border = "#3f2d54",
    danger_text = "#FFF",
    danger_bg = "#d175b8",
    danger_border = "#d175b8"
  ),
  bs_vars_wells(
    bg = "#FFF",
    border = "#3f2d54"
  )
)


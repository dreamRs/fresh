library(fresh)

# Color taken from
# wes_palette("Darjeeling1")

theme <- create_theme(
  theme = "default",
  # Custom navbar
  bs_vars_navbar(
    default_bg = "#00A08A",
    default_color = "#FFFFFF",
    default_link_color = "#FFFFFF",
    default_link_active_bg = "#FFF",
    default_link_active_color = "#00A08A",
    default_link_hover_color = "#000"
  ),
  # tabPanel()
  bs_vars_tabs(border_color = "#00A08A"),
  # Main colors (apply to button)
  bs_vars_color(
    gray_base = "#585858",
    brand_primary = "#5BBCD6",
    brand_success = "#00A08A",
    brand_info = "#F2AD00",
    brand_warning = "#F98400",
    brand_danger = "#FF0000"
  ),
  # Custom default button
  bs_vars_button(
    font_weight = 700,
    default_bg = "#FFF",
    default_border = "#5BBCD6",
    default_color = "#5BBCD6"
  ),
  # alert, panels, progress bars (like in fileInput())
  bs_vars_state(
    success_text = "#FFF",
    success_bg = "#00A08A",
    success_border = "#00A08A",
    info_text = "#FFF",
    info_bg = "#5BBCD6",
    info_border = "#5BBCD6",
    danger_text = "#FFF",
    danger_bg = "#FF0000",
    danger_border = "#FF0000"
  ),
  # wellPanel()
  bs_vars_wells(
    bg = "#FFF",
    border = "#00A08A"
  )
)

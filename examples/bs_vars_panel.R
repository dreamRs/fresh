bs_vars_panel(
  border_radius = "15px",
  default_text = "#FFF",
  default_heading_bg = "#3f2d54",
  default_border = "#3f2d54",
  primary_heading_bg = "#1B9E77",
  primary_border = "#1B9E77",
  success_heading_bg = "#D95F02",
  success_border = "#D95F02",
  success_text = "#FFF",
  danger_heading_bg = "#7570B3",
  danger_border = "#7570B3",
  danger_text = "#FFF"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_panel(
          border_radius = "15px",
          default_text = "#FFF",
          default_heading_bg = "#3f2d54",
          default_border = "#3f2d54",
          primary_heading_bg = "#1B9E77",
          primary_border = "#1B9E77",
          success_heading_bg = "#D95F02",
          success_border = "#D95F02",
          success_text = "#FFF",
          danger_heading_bg = "#7570B3",
          danger_border = "#7570B3",
          danger_text = "#FFF"
        ),
        output_file = NULL
      )
    ),
    tags$h1("Custom panels"),
    fluidRow(
      column(
        width = 3,
        panel(
          heading = "Default panel",
          "Some content"
        )
      ),
      column(
        width = 3,
        panel(
          heading = "Primary panel",
          status = "primary",
          "Some content"
        )
      ),
      column(
        width = 3,
        panel(
          heading = "Success panel",
          status = "success",
          "Some content"
        )
      ),
      column(
        width = 3,
        panel(
          heading = "Danger panel",
          status = "danger",
          "Some content"
        )
      )
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}

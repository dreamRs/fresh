bs_vars_component(
  padding_base_vertical = "5px",
  padding_base_horizontal = "20px",
  border_radius_base = 0,
  component_active_bg = "#0B610B"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_component(
          padding_base_vertical = "5px",
          padding_base_horizontal = "20px",
          border_radius_base = 0,
          component_active_bg = "#0B610B"
        ),
        output_file = NULL
      )
    ),
    tags$br(),
    actionButton("id", "A button"),
    wellPanel("A wellPanel"),
    panel(
      heading = "A panel",
      status = "primary",
      "Content"
    ),
    navlistPanel(
      "navlistPanel",
      tabPanel("First"),
      tabPanel("Second"),
      tabPanel("Third")
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}

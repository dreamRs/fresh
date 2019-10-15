bs_vars_alert(
  border_radius = "10px", # increase border radius,
  success_bg = "#c9d175" # change color for success alerts
)

if (interactive()) {
  library(shiny)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_alert(
          border_radius = "15px",
          success_bg = "forestgreen",
          success_text = "#FFF",
          danger_bg = "firebrick",
          danger_text = "#FFF"
        ),
        output_file = NULL
      )
    ),
    tags$br(),
    tags$div(
      class = "alert alert-success",
      "This is an alert !"
    ),
    tags$div(
      class = "alert alert-danger",
      "This is an other alert !"
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}

# Panels & alerts colors
bs_vars_state(
  success_text = "#FFF",
  success_bg = "#238B45",
  success_border = "#00441B"
)

if (interactive()) {
  library(shiny)
  library(shinyWidgets)
  library(fresh)

  ui <- fluidPage(

    use_theme(create_theme(
      theme = "default",
      bs_vars_state(
        success_text = "#FFF",
        success_bg = "#238B45",
        success_border = "#00441B"
      )
    )),

    tags$h1("State variables"),
    fluidRow(
      column(
        width = 6,
        tags$div(
          class = "alert alert-success",
          tags$b("Alert!"), "this is an alert !"
        )
      ),
      column(
        width = 6,
        panel(
          status = "success",
          "This is a panel"
        )
      )
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}

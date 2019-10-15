# change border radius
bs_vars_input(
  border_radius = "20px"
)


if (interactive()) {
  library(shiny)

  ui <- fluidPage(
    use_theme(create_theme(
      theme = "default",
      bs_vars_input(
        border_radius = "20px"
      )
    )),
    tags$h2("Rounded corner for inputs"),
    textInput("text", "Text:"),
    selectInput("select", "Select:",
                letters, selectize = FALSE)
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}

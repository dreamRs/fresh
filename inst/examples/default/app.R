
library(shiny)

ui <- navbarPage(
  title = "A new app",
  theme = "mytheme.css",
  tabPanel(
    title = "Demo",
    tags$h1("New colors demo"),
    actionButton(
      "primary", "Primary", class = "btn-primary"
    ),
    actionButton(
      "success", "Success", class = "btn-success"
    ),
    actionButton(
      "warning", "Warning", class = "btn-warning"
    ),
    actionButton(
      "danger", "Danger", class = "btn-danger"
    )
  ),
  tabPanel(
    title = "Second tab"
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)

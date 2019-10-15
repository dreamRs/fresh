bs_vars_button(
  default_color = "#FFF",
  default_bg = "#112446",
  default_border = "#FFF",
  primary_color = "#112446",
  primary_bg = "#FFF",
  primary_border = "#112446",
  border_radius_base = 0
)

if (interactive()) {
  library(shiny)

  ui <- fluidPage(
    use_theme(
      create_theme(
        theme = "default",
        bs_vars_button(
          default_color = "#FFF",
          default_bg = "#112446",
          default_border = "#FFF",
          primary_color = "#112446",
          primary_bg = "#FFF",
          primary_border = "#112446",
          border_radius_base = 0
        ),
        output_file = NULL
      )
    ),
    tags$h1("Custom buttons"),
    actionButton("button1", "This is a default button"),
    actionButton(
      "button2", "This is a primary button",
      class = "btn-primary"
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}

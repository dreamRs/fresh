# Change background color of the navbar
bs_vars_navbar(
  default_bg = "#75b8d1",
  default_color = "#FFFFFF",
  default_link_color = "#FFFFFF",
  default_link_active_color = "#FFFFFF"
)

if (interactive()) {
  library(shiny)

  ui <- navbarPage(
    title = "Custom navbar",
    header = use_theme(
      create_theme(
        theme = "default",
        bs_vars_navbar(
          default_bg = "#75b8d1",
          default_color = "#FFFFFF",
          default_link_color = "#FFFFFF",
          default_link_active_color = "#75b8d1",
          default_link_active_bg = "#FFFFFF",
          default_link_hover_color = "firebrick"

        ),
        output_file = NULL
      )
    ),
    tabPanel("Tab 1"),
    tabPanel("Tab 2")
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}


# Contrast colors
bs4dash_yiq(
  contrasted_threshold = 150,
  text_dark = "#007bff", # blue
  text_light = "#dc3545" # red
)

if (interactive()) {

  library(shiny)
  library(bs4Dash)

  ui <- bs4DashPage(
    title = "bs4Dash Contrast",
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(),
    body = bs4DashBody(

      use_theme(create_theme(
        bs4dash_yiq(
          contrasted_threshold = 180,
          text_dark = "#000",
          text_light = "#dc3545"
        )
      )),

      fluidRow(
        bs4ValueBox(
          value = 120,
          subtitle = "ValueBox with primary status",
          status = "primary",
          icon = "shopping-cart",
          href = "#",
          width = 4
        ),
        bs4ValueBox(
          value = 150,
          subtitle = "ValueBox with danger status",
          status = "danger",
          icon = "shopping-cart",
          href = "#",
          width = 4
        )
      )
    )
  )

  server <- function(input, output) {

  }

  shinyApp(ui, server)

}

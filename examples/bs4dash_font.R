
# Change font size used in bs4Dash
bs4dash_font(
  size_base = "1.5rem",
  weight_bold = 900
)

if (interactive()) {

  library(shiny)
  library(bs4Dash)

  ui <- bs4DashPage(
    title = "bs4Dash Custom Colors",
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(
      title = "bs4Dash Custom Colors",
      skin = "light",
      bs4SidebarMenu(
        bs4SidebarMenuItem(
          tabName = "tab1",
          text = "UI components"
        )
      )
    ),
    body = bs4DashBody(

      use_theme(create_theme(
        bs4dash_font(
          size_base = "1.5rem",
          weight_bold = 900
        )
      )),

      bs4TabItems(
        bs4TabItem(
          tabName = "tab1",
          tags$div(
            tags$p(
              paste(letters, collapse = "")
            ),
            tags$p(
              style = "font-weight: bold;",
              paste(letters, collapse = "")
            ),
            tags$p(
              style = "font-style: italic;",
              paste(letters, collapse = "")
            )
          ),
          tags$h1("First level title"),
          tags$h2("Second level title"),
          tags$h3("Third level title"),
          tags$h4("Fourth level title"),
          tags$h5("Fifth level title"),
          tags$h6("Sixth level title")
        )
      )
    )
  )

  server <- function(input, output) {

  }

  shinyApp(ui, server)

}


# Change colors used in bs4Dash
bs4dash_status(
  primary = "#F7FE2E",
  secondary = "#01DF3A"
)

if (interactive()) {

  library(shiny)
  library(bs4Dash)

  ui <- bs4DashPage(
    title = "bs4Dash Custom Status",
    # sidebar_collapsed = FALSE,
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(
      title = "bs4Dash Custom Status",
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
        bs4dash_status(
          primary = "#F7FE2E",
          secondary = "#01DF3A"
        )
      )),

      bs4TabItems(
        bs4TabItem(
          tabName = "tab1",
          tags$h2("UI components"),
          tags$h4("bs4ValueBox"),
          fluidRow(
            bs4ValueBox(
              value = 150,
              subtitle = "ValueBox with primary status",
              status = "primary",
              icon = "shopping-cart",
              href = "#",
              width = 4
            ),
            bs4ValueBox(
              value = 150,
              subtitle = "ValueBox with secondary status",
              status = "secondary",
              icon = "shopping-cart",
              href = "#",
              width = 4
            )
          ),
          tags$h4("bs4Card"),
          fluidRow(
            bs4Card(
              title = "Card with primary status",
              closable = FALSE,
              width = 6,
              solidHeader = TRUE,
              status = "primary",
              collapsible = TRUE,
              p("Box Content")
            ),
            bs4Card(
              title = "Card with secondary status",
              closable = FALSE,
              width = 6,
              solidHeader = TRUE,
              status = "secondary",
              collapsible = TRUE,
              p("Box Content")
            )
          )
        )
      )
    )
  )

  server <- function(input, output) {

  }

  shinyApp(ui, server)

}

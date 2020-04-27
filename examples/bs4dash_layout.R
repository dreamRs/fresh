
# Sidebar width
bs4dash_layout(
  sidebar_width = "400px"
)

if (interactive()) {

  library(shiny)
  library(bs4Dash)

  ui <- bs4DashPage(
    title = "bs4Dash big sidebar",
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(
      title = "bs4Dash big sidebar",
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
        bs4dash_layout(
          sidebar_width = "600px"
        )
      )),

      bs4TabItems(
        bs4TabItem(
          tabName = "tab1",
          "Content tab 1"
        )
      )
    )
  )

  server <- function(input, output) {

  }

  shinyApp(ui, server)

}


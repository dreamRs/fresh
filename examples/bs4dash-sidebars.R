
# Change colors used in bs4Dash
bs4dash_sidebar_light(
  bg = "#D7DF01",
  color = "#FF0000",
  active_color = "#00FF00",
  submenu_bg = "#00FFFF"
)

if (interactive()) {

  library(shiny)
  library(bs4Dash)

  ui <- bs4DashPage(
    title = "bs4Dash Custom Sidebar",
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(
      title = "bs4Dash Custom Sidebar",
      skin = "light",
      bs4SidebarHeader("Sidebar Title"),
      bs4SidebarMenu(
        bs4SidebarMenuItem(
          tabName = "menu1",
          text = "Menu 1",
          icon = "home"
        ),
        bs4SidebarMenuItem(
          tabName = "menu2",
          text = "Menu 2",
          icon = "th"
        ),
        bs4SidebarMenuItem(
          text = "Item List",
          icon = "bars",
          startExpanded = TRUE,
          bs4SidebarMenuSubItem(
            text = "Item 1",
            tabName = "item1",
            icon = "circle-thin"
          ),
          bs4SidebarMenuSubItem(
            text = "Item 2",
            tabName = "item2",
            icon = "circle-thin"
          )
        )
      )
    ),
    body = bs4DashBody(
      use_theme(create_theme(
        bs4dash_sidebar_light(
          bg = "#D7DF01",
          color = "#FF0000",
          active_color = "#00FF00",
          submenu_bg = "#00FFFF"
        )
      ))
    )
  )

  server <- function(input, output) {

  }

  shinyApp(ui, server)

}


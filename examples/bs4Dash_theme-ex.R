

library(shiny)
library(bs4Dash)
library(fresh)

ui <- dashboardPage(
  options = NULL,
  header = dashboardHeader(
    status = "primary",
    title = dashboardBrand(
      title = "My dashboard",
      color = "primary",
      href = "https://adminlte.io/themes/v3",
      image = "https://adminlte.io/themes/v3/dist/img/AdminLTELogo.png"
    )
  ),
  sidebar = dashboardSidebar(
    sidebarMenu(
      menuItem(
        text = "Tab 1",
        tabName = "tab1",
        icon = icon("van-shuttle")
      ),
      menuItem(
        text = "Tab 2",
        tabName = "tab2",
        icon = icon("shuttle-space")
      )
    )
  ),
  body = dashboardBody(
    use_theme(
      bs4Dash_theme(
        primary = "purple",
        success = "yellow",
        danger = "pink",
        "sidebar-light-bg" = "#C38AFF",
        "main-bg" = "#D9BBFF"
      )
    ),
    box(status = "danger", solidHeader = TRUE, title = "Title", "Content"),
    box(status = "primary", solidHeader = TRUE, title = "Title", "Content"),
    box(status = "success", solidHeader = TRUE, title = "Title", "Content")
  ),
  controlbar = dashboardControlbar(),
  title = "DashboardPage"
)


if (interactive()) {
  shinyApp(
    ui = ui,
    server = function(...) {}
  )
}



#  ------------------------------------------------------------------------
#
# Title : bs4Dash Dark Mode
#    By : Victor
#  Date : 2020-04-25
#
#  ------------------------------------------------------------------------



# Packages ----------------------------------------------------------------

library(shiny)
library(bs4Dash)
library(fresh)




# Theme -------------------------------------------------------------------

bs4DashTheme <- create_theme(
  bs4dash_yiq(contrasted_threshold = 10, text_dark = "#FFF", text_light = "#272c30"),
  bs4dash_layout(main_bg = "#353c42"),
  bs4dash_sidebar_dark(
    bg = "#272c30", color = "#bec5cb", hover_color = "#FFF",
    submenu_bg = "#272c30", submenu_color = "#FFF", submenu_hover_color = "#FFF"
  ),
  bs4dash_status(dark = "#272c30"),
  bs4dash_color(white = "#272c30", gray_900 = "#FFF")
)



# App ---------------------------------------------------------------------


ui <- bs4DashPage(
  title = "bs4Dash Dark Mode",
  # sidebar_collapsed = FALSE,
  navbar = bs4DashNavbar(skin = "dark"),
  sidebar = bs4DashSidebar(
    title = "bs4Dash Dark Mode",
    skin = "dark",
    bs4SidebarMenu(
      bs4SidebarHeader("Menu:"),
      bs4SidebarMenuItem(
        tabName = "tab1",
        text = "UI components",
        icon = "home"
      ),
      bs4SidebarMenuItem(
        tabName = "tab2",
        text = "Tab 2"
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

    use_theme(bs4DashTheme),

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
          ),
          bs4ValueBox(
            value = "53%",
            subtitle = "ValueBox with danger status",
            status = "danger",
            icon = "cogs",
            footer = "Hello World",
            width = 4
          )
        ),
        tags$h4("bs4InfoBox"),
        fluidRow(
          bs4InfoBox(
            value = 150,
            title = "InfoBox with primary status",
            iconStatus = "primary",
            icon = "shopping-cart",
            href = "#",
            width = 4
          ),
          bs4InfoBox(
            value = 150,
            title = "InfoBox with secondary status",
            iconStatus = "secondary",
            icon = "shopping-cart",
            href = "#",
            width = 4
          ),
          bs4InfoBox(
            value = "53%",
            title = "InfoBox with danger status",
            iconStatus = "danger",
            icon = "cogs",
            footer = "Hello World",
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
          ),
          bs4Card(
            title = "Card with danger status",
            closable = FALSE,
            width = 6,
            solidHeader = TRUE,
            status = "danger",
            collapsible = TRUE,
            p("Box Content")
          ),
          bs4Card(
            title = "Card with warning status",
            closable = FALSE,
            width = 6,
            solidHeader = TRUE,
            status = "warning",
            collapsible = TRUE,
            p("Box Content")
          ),
          bs4Card(
            title = "Card with info status",
            closable = FALSE,
            width = 6,
            solidHeader = TRUE,
            status = "info",
            collapsible = TRUE,
            p("Box Content")
          ),
          bs4Card(
            title = "Card with success status",
            closable = FALSE,
            width = 6,
            solidHeader = TRUE,
            status = "success",
            collapsible = TRUE,
            p("Box Content")
          )
        )
      ),
      bs4TabItem(
        tabName = "tab2",
        "Nothing to see here"
      )
    )
  )
)


server <- function(input, output) {

}


shinyApp(ui, server)




#  ------------------------------------------------------------------------
#
# Title : Custom bs4Dash theme
#    By : Victor
#  Date : 2020-04-25
#
#  ------------------------------------------------------------------------



# Packages ----------------------------------------------------------------

library(shiny)
library(bs4Dash)
library(fresh)




# Theme -------------------------------------------------------------------

bs4DashTheme <- bs4Dash_theme(primary = "#FFFF00", danger = "#3ADF00")



# App ---------------------------------------------------------------------


ui <- bs4DashPage(
  title = "bs4Dash Custom Theme",
  header = bs4DashNavbar(skin = "light"),
  sidebar = bs4DashSidebar(
    title = "bs4Dash Custom Theme",
    skin = "light",
    bs4SidebarMenu(
      bs4SidebarMenuItem(
        tabName = "tab1",
        text = "UI components"
      ),
      bs4SidebarMenuItem(
        tabName = "tab2",
        text = "Tab 2"
      )
    )
  ),
  body = bs4DashBody(

    use_theme(bs4DashTheme),

    bs4TabItems(
      bs4TabItem(
        tabName = "tab1",
        tags$h2("UI components"),
        actionButton("go", "A go button"),
        tags$h4("bs4ValueBox"),
        fluidRow(
          bs4ValueBox(
            value = 150,
            subtitle = "ValueBox with primary status",
            color = "primary",
            icon = icon("shopping-cart"),
            href = "#",
            width = 4
          ),
          bs4ValueBox(
            value = 150,
            subtitle = "ValueBox with secondary status",
            color = "secondary",
            icon = icon("shopping-cart"),
            href = "#",
            width = 4
          ),
          bs4ValueBox(
            value = "53%",
            subtitle = "ValueBox with danger status",
            color = "danger",
            icon = icon("cogs"),
            footer = "Hello World",
            width = 4
          )
        ),
        fluidRow(
          bs4ValueBox(
            value = "44",
            subtitle = "ValueBox with warning status",
            color = "warning",
            icon = icon("sliders"),
            width = 4
          ),
          bs4ValueBox(
            value = "44",
            subtitle = "ValueBox with info status",
            color = "info",
            icon = icon("sliders"),
            width = 4
          ),
          bs4ValueBox(
            value = "44",
            subtitle = "ValueBox with success status",
            color = "success",
            icon = icon("sliders"),
            width = 4
          )
        ),
        tags$h4("bs4InfoBox"),
        fluidRow(
          bs4InfoBox(
            value = 150,
            title = "InfoBox with primary status",
            color = "primary",
            icon = icon("shopping-cart"),
            href = "#",
            width = 4
          ),
          bs4InfoBox(
            value = 150,
            title = "InfoBox with secondary status",
            color = "secondary",
            icon = icon("shopping-cart"),
            href = "#",
            width = 4
          ),
          bs4InfoBox(
            value = "53%",
            title = "InfoBox with danger status",
            color = "danger",
            icon = icon("cogs"),
            width = 4
          )
        ),
        fluidRow(
          bs4InfoBox(
            value = "44",
            title = "InfoBox with warning status",
            color = "warning",
            icon = icon("sliders"),
            width = 4
          ),
          bs4InfoBox(
            value = "44",
            title = "InfoBox with info status",
            color = "info",
            icon = icon("sliders"),
            width = 4
          ),
          bs4InfoBox(
            value = "44",
            title = "InfoBox with success status",
            color = "success",
            icon = icon("sliders"),
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




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

library(fresh)
bs4DashTheme <- create_theme(
  bs4dash_vars(
    "body-color" = "#FFF",
    navbar_dark_color = "#bec5cb",
    navbar_dark_active_color = "#FFF",
    navbar_dark_hover_color = "#FFF"
  ),
  bs4dash_yiq(
    contrasted_threshold = 10,
    text_dark = "#FFF",
    text_light = "#272c30"
  ),
  bs4dash_layout(main_bg = "#353c42"),
  bs4dash_sidebar_dark(
    bg = "#272c30",
    color = "#bec5cb",
    hover_color = "#FFF",

    submenu_bg = "#272c30",
    submenu_color = "#FFF",
    submenu_hover_color = "#FFF"
  ),
  bs4dash_status(
    dark = "#272c30",
    primary = "#5E81AC",
    danger = "#BF616A"
  ),
  bs4dash_color(gray_900 = "#FFF", white = "#FFF")
)



# App ---------------------------------------------------------------------


ui <- bs4DashPage(
  title = "bs4Dash Dark Mode",
  # sidebar_collapsed = FALSE,
  header = bs4DashNavbar(skin = "dark"),
  controlbar = bs4DashControlbar(
    skin = "dark",
    "This is the control bar"
  ),
  sidebar = bs4DashSidebar(
    title = "bs4Dash Dark Mode",
    skin = "dark",
    bs4SidebarMenu(
      bs4SidebarHeader("Menu:"),
      bs4SidebarMenuItem(
        tabName = "tab1",
        text = "UI components",
        icon = icon("home")
      ),
      bs4SidebarMenuItem(
        tabName = "tab2",
        text = "Tab 2"
      ),
      bs4SidebarMenuItem(
        text = "Item List",
        icon = icon("bars"),
        startExpanded = TRUE,
        bs4SidebarMenuSubItem(
          text = "Item 1",
          tabName = "item1",
          icon = icon("circle-thin")
        ),
        bs4SidebarMenuSubItem(
          text = "Item 2",
          tabName = "item2",
          icon = icon("circle-thin")
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
#
#         tags$h4("Alerts"),
#         fluidRow(
#           bs4Alert(
#             title = "A primary alert",
#             status = "primary",
#             closable = FALSE,
#             "Example of alert."
#           ),
#           bs4Alert(
#             title = "Be Careful!",
#             status = "danger",
#             closable = FALSE,
#             "Danger alert preview."
#           )
#         ),

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
        ),
        tags$h4("Tab Card"),
        bs4TabCard(
          id = "tabcard",
          title = "A card with tabs",
          tabPanel(
            tabName = "Tab 1",
            "Content 1"
          ),
          tabPanel(
            tabName = "Tab 2",
            "Content 2"
          ),
          tabPanel(
            tabName = "Tab 3",
            "Content 3"
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


server <- function(input, output, session) {

  observeEvent(input$modal, {
    showModal(modalDialog(
      title = "Somewhat important message",
      "This is a somewhat important message.",
      easyClose = TRUE,
      footer = NULL
    ))
  })

}


shinyApp(ui, server)



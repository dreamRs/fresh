
#  ------------------------------------------------------------------------
#
# Title : Custom shinydashboard theme
#    By : Victor
#  Date : 2020-04-25
#
#  ------------------------------------------------------------------------


library(shiny)
library(shinydashboard)
library(fresh)



# header ------------------------------------------------------------------

header <- dashboardHeader(title = "My dashboard")




# sidebar -----------------------------------------------------------------

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Widgets", icon = icon("th"), tabName = "widgets", badgeLabel = "new",
             badgeColor = "green"),
    menuItem("Charts", icon = icon("bar-chart-o"),
             menuSubItem("Sub-item 1", tabName = "subitem1"),
             menuSubItem("Sub-item 2", tabName = "subitem2")
    )
  )
)




# body --------------------------------------------------------------------

body <- dashboardBody(

  use_theme(create_theme(
    adminlte_global(
      content_bg = "#FFF"
    ),
    adminlte_sidebar(
      dark_bg = "#80829a",
      dark_hover_bg = "#53486c"
    ),
    adminlte_color(
      light_blue = "#3f2d54",
      aqua = "#75b8d1",
      green = "#c9d175",
      red = "#d175b8",
      purple = "#3f2d54",
      yellow = "#d1ab75"
    )
  )),

  tabItems(
    tabItem(
      tabName = "dashboard",
      # infoBoxes
      fluidRow(
        infoBox(
          "Orders", uiOutput("orderNum2"), "Subtitle", icon = icon("credit-card")
        ),
        infoBox(
          "Approval Rating", "60%", icon = icon("line-chart"), color = "green",
          fill = TRUE
        ),
        infoBox(
          "Progress", uiOutput("progress2"), icon = icon("users"), color = "purple"
        )
      ),

      # valueBoxes
      fluidRow(
        valueBox(
          uiOutput("orderNum"), "New Orders", icon = icon("credit-card"),
          href = "http://google.com"
        ),
        valueBox(
          tagList("60", tags$sup(style="font-size: 20px", "%")),
          "Approval Rating", icon = icon("line-chart"), color = "green"
        ),
        valueBox(
          htmlOutput("progress"), "Progress", icon = icon("users"), color = "purple"
        )
      ),

      # Boxes
      fluidRow(
        box(status = "primary",
            sliderInput("orders", "Orders", min = 1, max = 2000, value = 650),
            selectInput("progress", "Progress",
                        choices = c("0%" = 0, "20%" = 20, "40%" = 40, "60%" = 60, "80%" = 80,
                                    "100%" = 100)
            )
        ),
        box(title = "Histogram box title",
            status = "warning", solidHeader = TRUE, collapsible = TRUE,
            plotOutput("plot", height = 250)
        )
      ),

      # Boxes with solid color, using `background`
      fluidRow(
        # Box with textOutput
        box(
          title = "Status summary",
          background = "green",
          width = 4,
          textOutput("status")
        ),

        # Box with HTML output, when finer control over appearance is needed
        box(
          title = "Status summary 2",
          width = 4,
          background = "red",
          uiOutput("status2")
        ),

        box(
          width = 4,
          background = "light-blue",
          p("This is content. The background color is set to light-blue")
        )
      )

    ),
    tabItem("widgets",
            "Widgets tab content",
            actionButton("btn1", "Button", class = "btn-primary"),
            actionButton("btn2", "Button", class = "btn-success"),
            actionButton("btn3", "Button", class = "btn-warning"),
            actionButton("btn4", "Button", class = "btn-danger")
    ),
    tabItem("subitem1",
            "Sub-item 1 tab content"
    ),
    tabItem("subitem2",
            "Sub-item 2 tab content"
    )
  )
)





# page --------------------------------------------------------------------

ui <- dashboardPage(header = header, sidebar = sidebar, body = body, skin = "purple")





# server ------------------------------------------------------------------

server <- function(input, output, session) {


  output$orderNum <- renderText({
    prettyNum(input$orders, big.mark=",")
  })

  output$orderNum2 <- renderText({
    prettyNum(input$orders, big.mark=",")
  })

  output$progress <- renderUI({
    tagList(input$progress, tags$sup(style="font-size: 20px", "%"))
  })

  output$progress2 <- renderUI({
    paste0(input$progress, "%")
  })

  output$status <- renderText({
    paste0("There are ", input$orders,
           " orders, and so the current progress is ", input$progress, "%.")
  })

  output$status2 <- renderUI({
    iconName <- switch(input$progress,
                       "100" = "ok",
                       "0" = "remove",
                       "road"
    )
    p("Current status is: ", icon(iconName, lib = "glyphicon"))
  })


  output$plot <- renderPlot({
    hist(rnorm(input$orders))
  })


}



shinyApp(ui, server)














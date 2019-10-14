
library(shiny)
library(shinyWidgets)


create_pretty(
  output_file = "custom-pretty.css",
  primary = "#1B9E77",
  success = "#7570B3",
  info = "#D95F02",
  danger = "#E7298A"
)


ui <- fluidPage(
  tags$h1("Pretty checkbox"),
  br(),

  use_pretty(path = "custom-pretty.css"),

  fluidRow(
    column(
      width = 4,
      prettyCheckbox(inputId = "checkbox1",
                     label = "Click me!"),
      verbatimTextOutput(outputId = "res1"),
      br(),
      prettyCheckbox(inputId = "checkbox4",  label = "Click me!",
                     outline = TRUE, status = "primary",
                     plain = TRUE, icon = icon("thumbs-up")),
      verbatimTextOutput(outputId = "res4")
    ),
    column(
      width = 4,
      prettyCheckbox(inputId = "checkbox2",
                     label = "Click me!", thick = TRUE,
                     animation = "pulse", status = "info"),
      verbatimTextOutput(outputId = "res2"),
      br(),
      prettyCheckbox(inputId = "checkbox5",
                     label = "Click me!", icon = icon("check"),
                     animation = "tada", status = "success"),
      verbatimTextOutput(outputId = "res5")
    ),
    column(
      width = 4,
      prettyCheckbox(inputId = "checkbox3",  label = "Click me!",
                     shape = "round", status = "danger",
                     fill = TRUE, value = TRUE),
      verbatimTextOutput(outputId = "res3")
    )
  )

)

server <- function(input, output, session) {

  output$res1 <- renderPrint(input$checkbox1)
  output$res2 <- renderPrint(input$checkbox2)
  output$res3 <- renderPrint(input$checkbox3)
  output$res4 <- renderPrint(input$checkbox4)
  output$res5 <- renderPrint(input$checkbox5)

}

shinyApp(ui, server)



library(shiny)
library(bslib)
library(bsicons)

make_btns <- function(outline = FALSE) {
  lapply(
    X = c("primary", "secondary", "success", "danger", "warning", "info"),
    FUN = function(x) {
      if (outline)
        x <- paste0("outline-", x)
      actionButton(paste0("btn", x), paste("Button", x), class = paste("btn", x, sep = "-"))
    }
  )
}

ui <- page_navbar(
  title = "Nord theme",

  theme = bs_theme_nord_light(),

  fillable = FALSE,
  sidebar = sidebar(
    "Sidebar",
    selectInput("id", "Choice:", month.name)
  ),
  nav_panel(
    "Page 1",

    make_btns(),
    tags$br(), tags$br(),
    make_btns(TRUE),
    tags$br(), tags$br(),

    layout_column_wrap(
      width = 1 / 5,
      value_box(
        title = "1st value",
        value = "123",
        showcase = bs_icon("bar-chart"),
        theme = "primary",
        p("The 1st detail")
      ),
      value_box(
        title = "2nd value",
        value = "456",
        showcase = bs_icon("graph-up"),
        theme = "success",
        p("The 2nd detail"),
        p("The 3rd detail")
      ),
      value_box(
        title = "3rd value",
        value = "789",
        showcase = bs_icon("pie-chart"),
        theme = "danger",
        p("The 4th detail"),
        p("The 5th detail"),
        p("The 6th detail")
      ),
      value_box(
        title = "4th value",
        value = "123",
        showcase = bs_icon("bar-chart"),
        theme = "warning",
        p("The 1st detail")
      ),
      value_box(
        title = "5th value",
        value = "123",
        showcase = bs_icon("bar-chart"),
        theme = "info",
        p("The 1st detail")
      )
    ),
    layout_column_wrap(
      width = 1 / 5,
      card(
        card_header(
          class = "bg-primary",
          "A header"
        ),
        card_body("Some content")
      ),
      card(
        card_header(
          class = "bg-success",
          "A header"
        ),
        card_body("Some content")
      ),
      card(
        card_header(
          class = "bg-danger",
          "A header"
        ),
        card_body("Some content")
      ),
      card(
        card_header(
          class = "bg-warning",
          "A header"
        ),
        card_body("Some content")
      ),
      card(
        card_header(
          class = "bg-info",
          "A header"
        ),
        card_body("Some content")
      )
    )
  ),
  nav_panel("Page 2", "Page 2 content"),
  nav_spacer(),
  nav_item(
    input_switch("dark_mode", "Dark mode", width = "120px")
  )
)

server <- function(input, output, session) {
  observe(session$setCurrentTheme(
    if (isTRUE(input$dark_mode)) bs_theme_nord_dark() else bs_theme_nord_light()
  ))
}

if (interactive())
  shinyApp(ui, server)


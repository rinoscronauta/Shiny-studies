library(shiny)

ui <- fluidPage(
  numericInput("x1", "Number one", value = 0, min = 0, max = 100),
  numericInput("x2", "Number two", value = 0, min = 0, max = 100),
  numericInput("x3", "Number three", value = 0, min = 0, max = 100),
  numericInput("y1", "Number four", value = 1, min = 0, max = 100),
  numericInput("y2", "Number five", value = 1, min = 0, max = 100),
  textOutput("z")
)

server <- function(input, output, session) {
  x <- reactive(input$x1 + input$x2 + input$x3)
  y <- reactive(input$y1 + input$y2)
  output$z <- renderText(x() / y())
}

shinyApp(ui, server)
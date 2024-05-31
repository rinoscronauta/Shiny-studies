library(shiny)

ui <- fluidPage(
  numericInput("a", "Number one", value = 0, min = 0, max = 100),
  numericInput("b", "Number two", value = 0, min = 0, max = 100),
  numericInput("d", "Number three", value = 0, min = 0, max = 100),
  textOutput("f")
)

server <- function(input, output, session) {
  c <- reactive(input$a + input$b)
  e <- reactive(c() + input$d)
  output$f <- renderText(e())
}

shinyApp(ui, server)
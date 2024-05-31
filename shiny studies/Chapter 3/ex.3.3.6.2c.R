library(shiny)

ui <- fluidPage(
  numericInput("a", "Number one", value = 1, min = 0, max = 100),
  numericInput("b", "Number two", value = 1, min = 0, max = 100),
  numericInput("c", "Number three", value = 1, min = 0, max = 100),
  numericInput("d", "Number four", value = 1, min = 0, max = 100),
  textOutput("z")
)

server <- function(input, output, session) {
  d <- reactive(c() ^ input$d)
  a <- reactive(input$a * 10)
  c <- reactive(b() / input$c) 
  b <- reactive(a() + input$b)
  output$z <- renderText(paste0(a(), ' , ', b(), ' , ', c(), ' , ', d()))
  
}

shinyApp(ui, server)
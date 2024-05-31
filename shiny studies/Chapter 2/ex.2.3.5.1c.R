library(shiny)

ui <- fluidPage(
  verbatimTextOutput("test")
)
server <- function(input, output, session) {
  output$test <- renderPrint(t.test(1:5, 2:6))
}

shinyApp(ui, server)
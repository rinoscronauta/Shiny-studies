library(shiny)

ui <- fluidPage(
  verbatimTextOutput("string")
)
server <- function(input, output, session) {
  output$string <- renderPrint(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui, server)
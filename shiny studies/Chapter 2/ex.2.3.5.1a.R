library(shiny)

ui <- fluidPage(
  verbatimTextOutput("code")
)
server <- function(input, output, session) {
  output$code <- renderPrint(summary(mtcars))
}

shinyApp(ui, server)
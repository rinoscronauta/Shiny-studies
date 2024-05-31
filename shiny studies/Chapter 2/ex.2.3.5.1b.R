library(shiny)

ui <- fluidPage(
  textOutput("greeting")
)
server <- function(input, output, session) {
  output$greeting <- renderText("Good morning!")
}

shinyApp(ui, server)
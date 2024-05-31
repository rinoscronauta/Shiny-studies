library(shiny)

ui <- fluidPage(
  sliderInput("number", "When should we deliver?", value = 0, min = 0, max = 100, step = 5, animate = TRUE)
)

server <- function(input, output, session){
}

shinyApp(ui, server)

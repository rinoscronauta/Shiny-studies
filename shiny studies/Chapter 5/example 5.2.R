library(shiny)
ui <- fluidPage(
  selectInput("n", "N", 1:10), # creates a string
  plotOutput("plot")
)
server <- function(input, output, session) {
  output$plot <- renderPlot({
    n <- as.numeric(input$n) * 2 # you need a number
    plot(head(cars, n))
  })
}
shinyApp(ui, server)
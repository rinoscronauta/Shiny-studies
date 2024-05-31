library(shiny)

datasets <- c("economics", "faithfuld", "seals")
ui <- fluidPage(
  selectInput("dataset", "Dataset", choices = datasets),
  verbatimTextOutput("summary"),
  plotOutput("plot") # tableOutput 
)

server <- function(input, output, session) {
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  
  output$summmary <- renderPrint({ # summry
    summary(dataset())
  })
  
  output$plot <- renderPlot({
    plot(dataset()) # dataset
  }, res = 96)
}

shinyApp(ui, server)
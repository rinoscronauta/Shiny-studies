library(shiny)

df <- mtcars

ui <- fluidPage(
  selectInput("name", NULL, choices = colnames(df)),
  verbatimTextOutput("debug")
)

server <- function(input, output, session) {
  col_var <- reactive( df[input$name] ) #var() is already a funcion
  col_range <- reactive({ range(col_var(), na.rm = TRUE ) }) #range is already a function
  output$debug <- renderPrint({ col_range() })
  
}

shinyApp(ui, server)
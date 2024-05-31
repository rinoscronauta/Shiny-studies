library(shiny)

ui <- fluidPage(
  textOutput("text"),
  verbatimTextOutput("code"),
  dateRangeInput("holiday", "When do you want to go on vacation next?")
)

# server <- function(input, output, session) {
#   output$text <- renderText({ 
#     "Hello friend!" 
#   })
#   output$code <- renderPrint({ 
#     summary(1:10) 
#   })
# }

#the {} are only required in render functions if need to run multiple lines of code

# A more compact way to write de server above

server <- function(input, output, session) {
  output$text <- renderText("Hello friend!")
  output$code <- renderPrint(summary(1:10))
}

# renderText() combines the result into a single string, and is usually paired with textOutput() 
# renderPrint() prints the result, as if you were in an R console, and is usually paired with verbatimTextOutput().

shinyApp(ui, server)
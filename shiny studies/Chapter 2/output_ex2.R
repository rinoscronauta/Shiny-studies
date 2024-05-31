library(shiny)

ui <- fluidPage(
  tableOutput("static"),
  dataTableOutput("dynamic")
)
server <- function(input, output, session) {
  output$static <- renderTable(head(mtcars)) #render a static table of data, showing all the data at once
  output$dynamic <- renderDataTable(mtcars, options = list(pageLength = 5)) #render a dynamic table, showing a fixed
  #number of rows along with controls to change which rows are visible
}

shinyApp(ui, server)
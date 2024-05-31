library(shiny)

animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

dia_fim <- today()
dia_inicio <- dia_fim - 7

ui <- fluidPage(
  textInput("name", "What's your name?"), #small amounts of text
  passwordInput("password", "What's your password?"), #passwords
  textAreaInput("story", "Tell me about yourself", rows = 3), #paragraphs of text
  numericInput("num", "Number one", value = 0, min = 0, max = 100), # constrained text box to collect numeric values
  sliderInput("num2", "Number two", value = 50, min = 0, max = 100), # slider
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100), # "range" slider with two ends
  dateInput("dob", "When were you born?"), # collect a single day
  dateRangeInput("holiday", "When do you want to go on vacation next?"), # collect a range of two days
  selectInput("state", "What's your favourite state?", state.name, # choose from a specified set of options: dropdowns 
              multiple = TRUE), # if you set multiple = TRUE you allow the user to select multiple elements
  radioButtons("animal", "What's your favourite animal?", animals), # choose from a specified set of options: radio button
  checkboxGroupInput("animal", "What animals do you like?", animals), # select multiple values
  checkboxInput("cleanup", "Clean up?", value = TRUE), #if you want a single checkbox for a single yes/no question
  checkboxInput("shutdown", "Shutdown?"),
  fileInput("upload", NULL), # allow the user to upload a file
  actionLink("click", "Click me!"), # let the user perform an action
  actionButton("drink", "Drink me!", icon = icon("cocktail")) # let the user perform an action
)

# If you have a very large set of possible options, you may want to use “server-side” selectInput() so that the complete set of
# possible options are not embedded in the UI (which can make it slow to load), but instead sent as needed by the server. 



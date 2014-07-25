library(shiny)

#UI for the application
shinyUI(pageWithSidebar(
  headerPanel(
    "Basic calculator"
  ),
  #Take input from the user
  sidebarPanel(
    h3('Enter values '),
    numericInput('A', 'Value of A', 1),
    numericInput('B', 'Value of B', 1),
    radioButtons("selection", "Calculation Type",
                 c("Addition" = "1",
                   "Subtraction" = "2",
                   "Multiplication" = "3",
                   "Division" = "4"))
  ),
  #Display documentation and output
  mainPanel(
    h4("Documentation : This application is to perform basic arithmetic 
       of addition, subtraction, multiplication and division
       on two numbers input from the user"),
    h3('Output'),
    h4('Value of A'),
    verbatimTextOutput("a_value"),
    h4('Value of B'),
    verbatimTextOutput("b_value"),
    h4("Result"),
    verbatimTextOutput("result")
  )
))
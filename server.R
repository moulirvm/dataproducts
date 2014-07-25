library(shiny)
#Function to perform calculation
calculator <- function(sel, a, b) {
  if(sel == "1") a+b else if (sel == "2") a-b else if (sel == "3") a*b else a/b
}

#Server function to read values and perform calculation
shinyServer(
  function(input, output) {
    output$a_value <- renderPrint({input$A})
    output$b_value <- renderPrint({input$B})
    output$selection <- renderPrint({input$selection})
    output$result <- renderPrint({calculator(input$selection, input$A, input$B)})
  }
)
# this is UI for the Shiny App

shinyUI(
  pageWithSidebar(
    
    headerPanel ("Calculate Selling price of a house in Cupertino, CA, USA, Input the Total Sq Ft and press Submit button"),
    sidebarPanel (
      numericInput('TotalSqft', 'Total Sq Ft (Min:1000, Max:9000)', 2000 , min=1000, max=9000, step=50),
      submitButton('Submit')   
    ),
    
    mainPanel(
      
      h3('Result of prediction'),
      h4('You Entered (in Square foot)'),
      verbatimTextOutput("inputValue"),
      h4(""),
      h4("Based on 168 Observations, Prediction value of your house in USD is "),
      verbatimTextOutput("prediction"),
      h4("Thank you for using Prediction Model")
      
    )
  )
)


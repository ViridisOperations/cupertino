# this is UI for the Shiny App

shinyUI(
  pageWithSidebar(
    
    headerPanel ("CALCULATE SELLING PRICE OF MY HOUSE IN CUPERTINO"),
    sidebarPanel (
      numericInput('TotalSqft', 'Total Sq Ft (Min:1000, Max:9000)', 2000 , min=1000, max=9000, step=50),
      submitButton('Submit')   
    ),
    
    mainPanel(
      
      h3('Result of prediction'),
      h4('You Entered'),
      verbatimTextOutput("inputValue"),
      h4(""),
      h4("Based on 168 Observations, Prediction value in USD is "),
      verbatimTextOutput("prediction"),
      h4("sudhir.wadhwa@gmail.com")
      
    )
  )
)


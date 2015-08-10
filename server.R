# This is Server file for Shiny App
# server.R 

pricePredict <- function(TotalSqft) {
  trainingdataset_cupertino <- read.csv(file="trainingdataset_cupertino.csv",head=TRUE,sep=":")
  fit1 <- lm(USD ~ TotalSqft, data = trainingdataset_cupertino)
  pre1<-predict(fit1, newdata= data.frame(TotalSqft) )
  pre1
}

###################################################################################################
# input is Totalsqft which Total Square foot of your house, smaple value can be 3000
# output is Predicted value by the model , for example 1,500,000 USD
# following function accepts TotalSqft as input and 
# simply calls the pricePredict function to determine the predicted value.
#


shinyServer (
  
  function(input, output) {
    
    output$inputValue <- renderPrint( {input$TotalSqft})
    output$prediction <- renderPrint ( {pricePredict(input$TotalSqft)})
    
  } 
  )


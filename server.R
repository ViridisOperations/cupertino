# This is Server file for Shiny App
# server.R 

pricePredict <- function(TotalSqft) {
  trainingdataset_cupertino <- read.csv(file="trainingdataset_cupertino.csv",head=TRUE,sep=":")
  fit1 <- lm(USD ~ TotalSqft, data = trainingdataset_cupertino)
  pre1<-predict(fit1, newdata= data.frame(TotalSqft) )
  pre1
}


shinyServer (
  
  function(input, output) {
    
    output$inputValue <- renderPrint( {input$TotalSqft})
    output$prediction <- renderPrint ( {pricePredict(input$TotalSqft)})
    
  } 
  )


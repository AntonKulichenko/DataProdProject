library(shiny)

data <- read.csv("consumption.csv", sep=",", header=T)
colnames(data)[1] <- "Date"
colnames(data)[2] <- "Gas"
colnames(data)[3] <- "Electricity"
colnames(data)[4] <- "Water"

## Define a server for the Shiny app
shinyServer(function(input, output) {
  
  dataInput <- reactive({
    subset(data, select=c(input$energy), subset=(substring(data$Date,8,9) == substring(input$year,3,4)))
  })
  
  ## Fill in the spot we created for a plot
  output$plot1 <- renderPlot({
    
    ## Render a barplot
    barplot(dataInput()[,input$energy],
            main=paste(input$energy, "in", input$year),
            ylab="Consumption (in $)", ylim=c(0,80),
            xlab="Weeks (Jan to Dec)", xlim=c(1,52))
  })
})
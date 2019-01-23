library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  # Create scatterplot object the plotOutput function is expecting
  output$scatterplot <- renderPlot({
      ggplot(data = iris, aes_string(x = input$x, y = input$y, colour="Species")) +
      geom_point()
  })
})
library(shiny)
library(datasets)
library(dplyr)

shinyServer(function(input, output) {
  
  output$table <- renderDataTable({
    hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
    data <- transmute(mtcars, Car = rownames(mtcars),Horsepower = hp, Gears=gear ,Cylinders = cyl, Transmission = am)
    data <- filter(data,Horsepower %in% hp_seq, Gears %in% input$gears, Cylinders %in% input$cyl,  Transmission %in% input$am)
    data <- mutate(data, Transmission = ifelse(Transmission==0, "Automatic", "Manual"))
    data
  }, options = list(lengthMenu = c(10, 20, 30), pageLength =30))
  
})

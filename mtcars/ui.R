library(shiny)
library(markdown)

shinyUI(fluidPage(
  
  titlePanel("What car is right for you?"),
  
  sidebarLayout(
    sidebarPanel(
      
      helpText("Describe the car that you want based on the following characteristics and I'll tell you what car is might be right for you."),
      
      sliderInput('hp', 'Gross Horsepower', min=50, max=400, value=c(50,400), step=10),
      
      checkboxGroupInput('gears', 'Number of Forward Gears:', c("Three"=3, "Four"=4, "Five"=5), selected = c(3,4,5)),
      
      checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
      
      checkboxGroupInput('cyl', 'Number of Cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8))
                         
      
    ),
    mainPanel(
      dataTableOutput('table')
    )
  )
  
)
)   
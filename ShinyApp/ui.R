
library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Flower Data Set"),

# Sidebar layout with a input and output definitions 
sidebarLayout(
  
  # Inputs
  sidebarPanel(
    
    # Select variable for y-axis
    selectInput(inputId = "y", 
                label = "Choose the variable in Y-axis:",
                choices = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"), 
                selected = "Sepal.Length"),
    # Select variable for x-axis
    selectInput(inputId = "x", 
                label = "Choose the variable in X-axis:",
                choices = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"), 
                selected = "Petal.Length")
  ),
  
  # Outputs
  mainPanel(
    plotOutput(outputId = "scatterplot")
  )
)
))

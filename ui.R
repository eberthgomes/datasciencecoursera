
library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Body Mass Index"),
  
  # Sidebar with two numeric input for mass and height
  sidebarPanel(
    h4("Input your mass and height bellow"),
    numericInput(inputId = "mass", 
                   label = "Mass (kg):", 
                   value = 70),
    
    numericInput(inputId = "height", 
                   label = "Height (meters):", 
                   value = 1.7,
                    step = 0.01)
  ),
  
  # Show the body mass index
  mainPanel(
    h2(textOutput("text1")),
    tags$head(tags$style("#text1{color: blue}")
    ),
    h4("BMI Categories:"),
    p("Underweight = <18.5"),
    p("Normal weight = 18.5–24.9"),
    p("Overweight = 25–29.9"),
    p("Obesity = BMI of 30 or greater")
  )
))

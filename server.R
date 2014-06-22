
library(shiny)

# Calculate the body mass index using mass and height
bodyMass <- function(mass, height) round(mass / (height * height), 2)

shinyServer(function(input, output) {
  
  bmi <- reactive(bodyMass(input$mass, input$height))
  output$text1 <- renderText({ 
    if (bmi() < 18.5) paste("The BMI is ", bmi(), "(Underweight)")
    else if (bmi() >= 18.5 && bmi() < 25.0)
            paste("The BMI is ", bmi(), "(Normal weight)")
    else if (bmi() >= 25.0 && bmi() < 30.0)
            paste("The BMI is ", bmi(), "(Overweight)")
    else paste("The BMI is ", bmi(), "(Obesity)")
  })
  
})


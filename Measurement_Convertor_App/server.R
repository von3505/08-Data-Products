library(shiny)

shinyServer(function(input, output) {
  
  values <- reactiveValues()
  
observe({
  input$Calculate
  values$in_inches <- isolate({
    input$in_cm * 0.39   
    })
  })

observe({
  input$Calculate
  values$in_pounds <- isolate({
    input$in_kg*2.2
  
  })
})
  
  # Display values entered
  output$text_in_cm <- renderText({
    input$Calculate
    paste(isolate(input$in_cm), "cm")
  })
  
  output$text_in_kg <- renderText({
    input$Calculate
    paste(isolate(input$in_kg),"kg")
  })
  
  
  
  # Display calculated values
  
output$text_in_inches <- renderText({
  if(input$Calculate == 0) ""
  else
    paste(values$in_inches, "inches")
})

output$text_in_pounds <- renderText({
  if(input$Calculate == 0) ""
  else
    paste(values$in_pounds, "pounds")
})
  
})
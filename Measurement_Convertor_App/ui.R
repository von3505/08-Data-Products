library(shiny)
shinyUI(fluidPage(
  titlePanel("Measurement Convertor"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("Speaking to an American? This app calculates your measurement from centimetres to inches and from kilograms to pounds based on your inputs."),            
      br(),           
      numericInput("in_cm",label = h4("Given (in cm)"),min = 0.1, max = 1000000,0), #,value = 100
      br(),
      numericInput("in_kg",label = h4("Given (in kg)"),min = 0.1, max = 1000000,0), #, value = 100
      br(),
      
      br(),   
      actionButton("Calculate", label = "Convert Now")    
      
      
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Measurement Convertor",
                 p(h4("Your entered values:")),
                 textOutput("text_in_cm"),
                 textOutput("text_in_kg"),
                 br(),
                 p(h4("Calculated values:")),
                 textOutput("text_in_inches"),
                 textOutput("text_in_pounds")
                 
        ),
        tabPanel(
          "Documentation",
          p(h3("Speaking to an American?")),
          helpText("In Singapore, we refer to measurements in centimetres and kilograms. However, in America, measurements are refered to in inches and pounds. Need a quick conversion? "),
          br(),
          p(h3("Try this easy to use Measurement Convertor:")),
          br(),
          helpText("This app calculates your measurement from centimetres to inches and from kilograms to pounds based on your inputs. To convert your measurements, enter your current values in the form"),
         
          HTML("<u><b>Quick Facts: </b></u>
                        <br> <br>
                        <b> 1 kilogram roughly equals to 2.2 pounds</b>
                        <br>
                        <b> 1 centimetre roughly equals to 0.39 inch</b>
               ") 
          
        )
        
      )
      
    )
  )
))
library(shiny)
shinyUI(
    
    
    pageWithSidebar(
        headerPanel("Graphic these functions"
            ),
        
        sidebarPanel(
            h2('select the function to print'),
            numericInput('k', 'factor', value = 10, min = 0, max = 100, step = 1),
            sliderInput('t', 'speed',value = 5, min = 1, max = 10, step = 0.1),
            radioButtons("rb", "availables functions",
                               c("k·e^(-t·x)" = "e",
                                 "k·sin(t·x)" = "sin",
                                 "k·cos(t·x)" = "cos"))
            ),
    
    
        mainPanel(
           h2('The constructed function is:'),
           verbatimTextOutput("funcion"),
           plotOutput('canvas')
           
            )
        )
    )

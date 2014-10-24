library(shiny)
shinyServer(
    function(input, output) {
        x <- seq(from=0.05, to=2*pi, by=0.05)
        output$funcion <- renderPrint({input$rb})
        output$canvas <- renderPlot({
            if(input$rb == "e"){
                plot(x, y = (input$k)*exp(-x*input$t), type ="l", lwd = 5,
                     ylab = "f", xlab='time', col='lightblue', main='function behavior')
                
            } else if(input$rb == "sin") {
                plot(x, y = (input$k)*sin(input$t*x), type ="l", lwd = 5,
                     ylab = "f",xlab='time', col='lightblue', main='function behavior')
                
            } else if(input$rb == "cos") {
                plot(x, y = (input$k)*cos(input$t*x), type ="l", lwd = 5,
                     ylab = "f",xlab='time', col='lightblue', main='function behavior')
                
            } else plot(0,0)
        })
    }
)

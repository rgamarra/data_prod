
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    #x    <- Titanic[, 2]
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)

    
    # plot(Titanic[1], Titanic[3], ylab = "Class", xlab = "Age")
    # draw the histogram with the specified number of bins
    # hist(x, breaks = bins, col = 'darkgray', border = 'white')
    #USArrests(Titanic, main = "Survival on the Titanic")
    x = strtoi(input$selectx)
    y = strtoi(input$selecty)
    if(x == 1){
      labelx = "Murder"
    } else if(x == 2){
      labelx = "Assault"
    } else if(x == 3){
      labelx = "Urban Pop"
    } else if(x == 4){
      labelx = "Rape"
    } else {
      labelx = ""
    }
    if(y == 1){
      labely = "Murder"
    } else if(y == 2){
      labely = "Assault"
    } else if(y == 3){
      labely = "Urban Pop"
    } else if(y == 4){
      labely = "Rape"
    } else {
      labely = ""
    }
    xdata = USArrests[,x]
    ydata = USArrests[,y]
    regr  = lm(ydata ~ xdata)
    plot(xdata, ydata, xlab=labelx, ylab=labely)
    abline(regr, col="red")
    output$slope <- renderText(paste("The slope of the red line is", coef(regr)["xdata"] ))
    output$corr <- renderText(paste("The correlation is",cor(xdata,ydata) ))
  })

})

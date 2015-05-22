
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Violent Crime Rates by US States"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      #sliderInput("bins", "Number of bins:",min = 1,max = 50,value = 30)
      selectInput("selectx", label = h3("X axis"), 
                  choices = list("Murder" = 1, "Assault" = 2,
                                 "Urban Pop" = 3, "Rape" = 4), selected = 1),
      selectInput("selecty", label = h3("Y axis"), 
                  choices = list("Murder" = 1, "Assault" = 2,
                                 "Urban Pop" = 3, "Rape" = 4), selected = 2),
      h6("Murder  numeric	Murder arrests (per 100,000)",
      h6("Assault	numeric	Assault arrests (per 100,000)"),
      h6("UrbanPop  numeric	Percent urban population"),
      h6("Rape  numeric	Rape arrests (per 100,000)")
      )
      ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      h3(textOutput("slope")),
      h3(textOutput("corr"))
      
    )
  )
))

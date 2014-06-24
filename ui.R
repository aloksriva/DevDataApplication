shinyUI(navbarPage("Predicting Fuel Efficiency",
      tabPanel("User Inputs",
        #headerPanel("Predicting Fuel Efficiency"),
        sidebarPanel(
          radioButtons('am', 'Transmission Type: ', list("Automatic" = "0", "Manual" = "1")),
          sliderInput('hp', 'Gross Horse Power: ',value = 50, min = 0, max = 400, step = 10,)
        ),
        mainPanel(plotOutput('myPlot'))
      ),
      tabPanel("User Guide",
         mainPanel(tags$p("This application provides users capability to predict the fuel efficiency of cars depending on the Gross Horse Power (hp) and the transmission type - automatic or manual - of their car."),
                  tags$p("User needs to select the transmission type and the horse power using the widgets provided."),
                  tags$p("In application's main panel, users have a static view of fuel efficiency for a given transmission type (automatic displayed in red, manual in blue) and engine's horse power, identified from a study mentioned in last paragraph."),
                  tags$p("Based on user input, this application, using a linear regression model, predicts the expected fuel efficiency."),
                  tags$p("Fuel efficiency returned by user's selection is diplayed as a red circle and in digits on the chart."),
                  tags$p("The regression model used for prediction was fitted using data captured and published by a major auto magazine.")
                  )
      )
))
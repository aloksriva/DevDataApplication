library(UsingR)
library(ggplot2)
data(mtcars)

shinyServer(
  function(input, output) {
    output$myPlot <- renderPlot({
      plot.new()
      p <- ggplot(mtcars, aes(x=hp, y=mpg, group=as.factor(am), col=as.factor(am))) + geom_smooth(method="loess")
      hp <- input$hp
      am <- as.numeric(input$am)
      mpg <- (26.584914 + (5.27709 * am) - (0.05889 * hp))
      p <- p + geom_point(x = hp, y=mpg, col="red",pch=19, size = 8)
      p <- p + annotate("text", label = paste("FE (mpg)= ", as.character(round(mpg, 2))), x = 300, y = 70, size=5, col = "red")
      print(p)

    })    
  }
)
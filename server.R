library(shiny)
shinyServer(function(input,output){
  
  output$distPlot <- renderPlot({
    set.seed(1234)
    x    <- rf(input$n,1,100,50)
    bins <- seq(min(x), max(x), length.out = input$k + 1)
    hist(x, breaks = bins, col = 'skyblue', border = 'black')
  })
  
  output$remark <- renderText(paste("随机数生成规则：rf(",input$n,",1,100,50)"))
  
})

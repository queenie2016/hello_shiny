library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("画出n个服从F分布的随机数的直方图"),
  sidebarPanel(
    numericInput("n", "随机数个数n:", 50),
    sliderInput("k","直方图柱子数目k:",min = 1,max = 30,value = 10)
  ),
  mainPanel(
    plotOutput("distPlot"),
    textOutput("remark")
  )
))

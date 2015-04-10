library(shiny)
library(ggvis)
library(shinythemes)


shinyUI(navbarPage("NEG/ECP Scenario Analysis",theme = shinytheme("cerulean"),
    tabPanel("New England CO2e Emissions",
      fluidRow(
       column(3,
        wellPanel(
         uiOutput("c1"),
         br()
     )
    ),
       column(9,
        wellPanel(h4("Total New England CO2e Emissions",align="center"),style="width: 75%;",
         ggvisOutput("plot1")
     )
    )
   )
  ),
    tabPanel("Wedges Analysis",
      fluidRow(
       column(3,
        wellPanel(
         uiOutput("c2")
     ),
        wellPanel(
         uiOutput("c4")
     ),
        wellPanel(
         uiOutput("c6")
     ),
        wellPanel(
        uiOutput("c3")
     ),
        wellPanel(
        uiOutput("c5")
     )
   ),
       column(9,
        wellPanel(h4("Greenhouse Gases by Sector",align="center"),style="width: 100%; height: 125%;",
        includeHTML("svgfiller.js"),
        reactiveSvg(outputId = "svg.grid") 
        #plotOutput("gridPlot")
     )
    )
   )
  )
 ) 
) 
 
 
reactiveSvg <- function (outputId)
{
HTML(paste("<div id=\"", outputId, "\" class=\"shiny-network-output\"><svg /></div>", sep=""))
}









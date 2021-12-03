#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyjs)
## source https://codepen.io/tungnt1/pen/gOOMVRp?css-preprocessor=stylus
# Define UI for application that draws a histogram
ui <- fluidPage(
    ## set up shinyjs
    useShinyjs(),
    # Application title
    title = "Randomeyes",
    ## CSS style file
    includeCSS("www/style.css"),
    ## white balls
    div(class="mid",
        tags$section(class="stage", tags$figure(class="ball",span(class="number", `data-number` = "8"))),
        tags$section(class="stage", tags$figure(class="ball",span(class="number", `data-number` = "2"))),
        tags$section(class="stage", tags$figure(class="ball",span(class="number", `data-number` = "4"))),
        tags$section(class="stage", tags$figure(class="ball",span(class="number", `data-number` = "5")))
 ),
 ## red balls (uneven number to insyill you don't need equal groups)
 div(class="mid",
     tags$section(class="stage", tags$figure(class="ballr",span(class="number", `data-number` = "5"))),
     tags$section(class="stage", tags$figure(class="ballr",span(class="number", `data-number` = "6"))),
     tags$section(class="stage", tags$figure(class="ballr",span(class="number", `data-number` = "10")))
 )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)

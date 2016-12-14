library(shinythemes)
#A navlistPanel is like a tabPanel, except that the navigation links are on the left
# instead of the top.

fluidPage(
  
  includeCSS("styles.css"),
  
#  theme = shinytheme("yeti"),
#  theme = shinytheme("superhero"),
  theme = shinytheme("spacelab"),
  
  mainPanel(

  titlePanel("Learning Panel"),
  
  navlistPanel(
    "Clustering",
    tabPanel(("Introduction"),
             br(),
             tags$div(
               HTML(paste("This panel displays a plot only if the ", 
                          tags$span(style="color:red", "Execute Forecast Models"), 
                          " checkbox is marked and you press the ",
                          tags$span(style="color:red", "Time Series Plots"),
                          " button !",
                          sep = ""))
             ),
             br(),
             p("Please be patient, more that 16 models are being executed in the background"),
             plotOutput("ggplot_forecast"),
             br()
    ),
    tabPanel("The Tool",
             h3("Here you'll learn about the tool")
    ),
    tabPanel("Explanation",
             h3("First part explenation"),
             tabsetPanel(
               tabPanel(tags$div(id="First_Cue","First Cue"), 
                        tags$div(
                          HTML(paste("This panel displays a plot only if the ", 
                                     tags$span(style="color:red", "Execute Forecast Models"), 
                                     " checkbox is marked and you press the ",
                                     tags$span(style="color:red", "Time Series Plots"),
                                     " button !",
                                     sep = "")))
               ), 
               tabPanel(tags$div(id="Second_Cue","Second Cue"),
                                  verbatimTextOutput("summary")), 
               tabPanel(tags$div(id="Third_Cue","Last Cue"), tableOutput("table"))
             )
    ),
    
    tabPanel("When to Use It",
             h3("Here you'll learn about the tool")
    ),
    tabPanel("When Not to Use it",
             h3("Here you'll learn about the tool")
    ),
    tabPanel("Hands-On",
             h3("Here you'll learn about the tool")

    )
   )
  )
)
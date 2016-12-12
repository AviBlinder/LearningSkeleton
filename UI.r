
#A navlistPanel is like a tabPanel, except that the navigation links are on the left
# instead of the top.

fluidPage(
  
  
  
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", plotOutput("plot")),
      tabPanel("Summary", verbatimTextOutput("summary")),
      tabPanel("Table", tableOutput("table")),
      navlistPanel(
        "Internal navlist Panel",
        tabPanel("Internal One",
                 h3("This is the second panel")
        ),
        tabPanel("Internal Two",
                 h3("This is the third panel")
                 
      )
    )
  ),
  
    
  titlePanel("Navlist panel example"),
  
  navlistPanel(
    "Header",
    tabPanel("First",
             h3("This is the first panel")
    ),
    tabPanel("Second",
             h3("This is the second panel")
    ),
    tabPanel("Third",
             h3("This is the third panel")
    )
  )
  )
)
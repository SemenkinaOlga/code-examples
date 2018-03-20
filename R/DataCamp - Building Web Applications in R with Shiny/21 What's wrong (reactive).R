library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      titlePanel("Add 2"),
      sliderInput("x", "Select x", min = 1, max = 50, value = 30) 
    ),
    mainPanel( 
      textOutput("x_updated") 
    )
  )
)

add_2 <- function(x) { x + 2 }

server <- function(input, output) {
  current_x        <- reactive({add_2(input$x)})
  output$x_updated <- reactiveText({ current_x() })
}

shinyApp(ui, server)
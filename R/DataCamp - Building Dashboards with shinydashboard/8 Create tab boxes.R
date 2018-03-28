library("shiny")
body <- dashboardBody(
  # Create a tabBox
  tabItems(
    tabItem(
      tabName = "dashboard",
      tabBox(
        title = "International Space Station Fun Facts",
        tabPanel("Fun Fact 1", "Content for the first tab"),
        tabPanel("Fun Fact 2", "Content for the second tab")
      )
    ),
    tabItem(tabName = "inputs")
  )
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = body
)
shinyApp(ui, server)
body <- dashboardBody(
  tabItems(
    # Add two tab items, one with tabName "dashboard" and one with tabName "inputs"
    tabItem(tabName = "dashboard", "dashboard"),
    tabItem(tabName = "inputs", "inputs")
  )
)

# Use the new body
ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = body
)
shinyApp(ui, server)
sidebar <- dashboardSidebar(
  sidebarMenu(
    # Create two `menuItem()`s, "Dashboard" and "Inputs"
    menuItem(text = "Dashboard", tabName = "dashboard"),
    menuItem(text = "Inputs", tabName = "inputs")
  )
)

# Use the new sidebar
ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = dashboardBody()
)
shinyApp(ui, server)
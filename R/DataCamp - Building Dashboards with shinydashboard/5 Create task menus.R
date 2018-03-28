header <- dashboardHeader(
  # Create a tasks drop down menu
  dropdownMenu(
    type = "tasks",
    taskItem(
      text = "Mission Learn Shiny Dashboard",
      value = 10
    )
  )
)

# Use the new header
ui <- dashboardPage(header = header,
                    sidebar = dashboardSidebar(),
                    body = dashboardBody()
)
shinyApp(ui, server)
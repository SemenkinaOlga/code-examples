header <- dashboardHeader(
  # Create a notification drop down menu
  dropdownMenu(
    type = "notifications",
    notificationItem(text = "The International Space Station is overhead!")
  )
)

# Use the new header
ui <- dashboardPage(header = header,
                    sidebar = dashboardSidebar(),
                    body = dashboardBody()
)
shinyApp(ui, server)
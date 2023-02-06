library(shiny)
library(shinydashboard)
# BootStrap 3

ui <- dashboardPage(skin = "green",
  dashboardHeader(
    title = "FBDE | NEXION"
    
    
  ),
  dashboardSidebar(
    sidebarMenu(
      menuItem(
        "Mapa",
        tabName = "mapa",
        icon = icon("dashboard")
      ),
      menuItem(
        "Graficos",
        tabName = "graficos",
        icon = icon("dashboard")
      ),
      menuItem(
        "Quartis",
        icon = icon("calendar")
      ),
      menuSubItem(
        "Teste1",
        tabName = "T1"
      ),
      menuSubItem(
        "Teste2",
        tabName = "T2"
      ),
      menuItem(
        "Dados",
        tabName = "dados",
        icon = icon("th")
      ),
      menuItem(
        "Sobre o FBDE | NEXION",
        icon = icon("file-cod-o"),
        href = "https://www.fbde.com.br"
      )
    
    )
    
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "mapa", h2("Meu Mapa")
      ),
      tabItem(
        tabName = "graficos", h2("Meus Gráficos")
      ),
      tabItem(
        tabName = "T1", h2("Meu teste 1")
      ),
      tabItem(
        tabName = "T2", h2("Meu Teste 2")
      ),
      tabItem(
        tabName = "dados", h2("Meus Dados")
      )
    )
     
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {}

# Run the application 
shinyApp(ui = ui, server = server)

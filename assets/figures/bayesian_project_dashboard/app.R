library(shiny)
library(shinyWidgets)
library(shinycssloaders)

ui <- fluidPage(
    theme = bslib::bs_theme(bootswatch = "flatly"),
    titlePanel("Model Visualization Dashboard"),
    fluidRow(
    # sidebarLayout(
        # sidebarPanel(
            column(3,
                   selectInput("model", "Select Model:", 
                        choices = c("DRPM", "sPPM", "Gaussian PPMx", "Curve PPMx"), 
                        selected = "DRPM")
                   )
            ,
            column(3,
                   selectInput("plot_type", "Select Plot Type:", 
                        choices = c("Graph and Boxplot", "Graph", "Salso", "ARI"), 
                        selected = "Graph and Boxplot")
                   )
            ,
            column(3,
            uiOutput("week")
                   # sliderInput("week", "Select Week:", min = 1, max = 52, value = 1, step = 1)
                   )
            # ,
        , width=3),
    # fluidRow(
        mainPanel(
            tabsetPanel(
                tabPanel("One Model View", 
                         imageOutput("plot_1")),
                tabPanel("Four Models Comparison", 
                         fluidRow(
                             column(6, imageOutput("plot_21")),
                             column(6, imageOutput("plot_22"))
                         ),
                         fluidRow(
                             column(6, imageOutput("plot_23")),
                             column(6, imageOutput("plot_24"))
                         )
                ),
                tabPanel("Covariates Visualization", imageOutput("covariates_plot"))
            )
        )
    # )
)


server <- function(input, output) {

    observeEvent(input$plot_type, {
        output$week = renderUI({
        if (input$plot_type != "ARI") {
            sliderInput("week", "Select Week:", min = 1, max = 52, value = 1, step = 1)
        } 
            # else {
            # return(NULL) # Hide the UI element when ARI is selected
        # }
        })
    })
    
    #### PANEL 1 ####
    output$plot_1 <- renderImage({
        filename = switch(input$plot_type,
                          ARI = paste0("../",input$model,"/",input$plot_type,"/","ari.svg"),
                          paste0("../",input$model,"/",input$plot_type,"/",
                                 input$plot_type,"-",sprintf("%02d",input$week),".png")
            )
        list(src = filename, width = "100%", height = "auto")
    }, deleteFile = FALSE)
    
    
    #### PANEL 2 ####
    output$plot_21 <- renderImage({
        filename = switch(input$plot_type,
                          ARI = paste0("../DRPM/",input$plot_type,"/","ari.svg"),
                          paste0("../DRPM/",input$plot_type,"/",
                                 input$plot_type,"-",sprintf("%02d",input$week),".png")
            )
        list(src = filename, width = "100%", height = "auto")
    }, deleteFile = FALSE)
    output$plot_22 <- renderImage({
        filename = switch(input$plot_type,
                          ARI = paste0("../sPPM/",input$plot_type,"/","ari.svg"),
                          paste0("../sPPM/",input$plot_type,"/",
                                 input$plot_type,"-",sprintf("%02d",input$week),".png")
            )
        list(src = filename, width = "100%", height = "auto")
    }, deleteFile = FALSE)
    output$plot_23 <- renderImage({
        filename = switch(input$plot_type,
                          ARI = paste0("../Gaussian PPMx/",input$plot_type,"/","ari.svg"),
                          paste0("../Gaussian PPMx/",input$plot_type,"/",
                                 input$plot_type,"-",sprintf("%02d",input$week),".png")
        )
        list(src = filename, width = "100%", height = "auto")
    }, deleteFile = FALSE)
    output$plot_24 <- renderImage({
        filename = switch(input$plot_type,
                          ARI = paste0("../Curve PPMx/",input$plot_type,"/","ari.svg"),
                          paste0("../Curve PPMx/",input$plot_type,"/",
                                 input$plot_type,"-",sprintf("%02d",input$week),".png")
        )
        list(src = filename, width = "100%", height = "auto")
    }, deleteFile = FALSE)
    
    
}

shinyApp(ui, server)

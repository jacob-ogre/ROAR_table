# BSD_2_clause

shinyUI(fluidPage(
  useShinyjs(),
  # tags$style(
  #   "div.outer {
  #     position: fixed;
  #     background-color: #bfbfbf;
  #     top: 0px;
  #     left: 0;
  #     right: 0;
  #     bottom: 0;
  #     overflow: hidden;
  #     padding: 0;
  #   }"
  # ),
  fluidRow(
    column(12,
      hr(),
      DT::dataTableOutput("recovery_actions_table")
    )
  )
  
))



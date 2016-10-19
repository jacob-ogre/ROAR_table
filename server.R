# BSD_2_clause

shinyServer(function(input, output, session) {
  
  species <- reactive({
    q <- parseQueryString(session$clientData$url_search)
    if(length(q) == 0) q[['species']] <- "Chelonia mydas"
    return(q[['species']])
  })
  
  cur_dat <- reactive({
    look <- dplyr::filter(spp_lookup, grepl(spp_lookup$spp, pattern = species()))
    dat <- full[look$idx, ]
    return(dat)
  })
  
  # output$recovery_actions_table <- DT::renderDataTable({
  #   observe({ print(dim(cur_dat())) })
  #   cur_dat()
  # })
  
  output$recovery_actions_table <- DT::renderDataTable({
    the_dat <- cur_dat()
    DT::datatable(the_dat,
      rownames = FALSE,
      filter = "top", 
      extensions = list("Buttons"), 
      options = list(
        dom = 'Bfrtip',
        buttons = c("csv")
      )
    )
  })

})
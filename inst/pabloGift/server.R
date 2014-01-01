## Setup
library("pablo2013")
library("shiny")

## Main shiny function
shinyServer(function(input, output) {
	
	formatData <- reactive({
		answers <- c(input$anime1, input$anime2, input$history1, input$code1, input$code2)
		data <- data.frame("Selected"=answers, "Expected"= c("Kuudere", "Noriko Takaya", "Tokugawa", "3", "5"), stringsAsFactors=FALSE)
		data$Correct <- sapply(seq_len(nrow(data)), function(x) { data$Selected[x] == data$Expected[x] })
		data
	})
	
	## Show the number of correct answers, and the correct answers
	output$answers <- renderTable({
		data <- formatData()
		data
	})
	output$total <- renderPrint({
		data <- formatData()
		sum(data$Correct)
	})
	output$percent <- renderPrint({
		data <- formatData()
		sum(data$Correct) / nrow(data) * 100
	})
	output$runCode <- renderPrint({
		pabloCode()
	})	
}) 
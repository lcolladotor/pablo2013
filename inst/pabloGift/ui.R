## Setup
source("server.R")

## Specify layout
shinyUI(pageWithSidebar(
	
	headerPanel(HTML("Pablo's 2013 christmas gift (code at <a href='https://github.com/lcolladotor/pablo2013'>GitHub</a>)"), "pablo2013"),
	
	
	sidebarPanel(
		## Construct input options
		
		## Choose the data
		h4("Answer the questions"),
		selectInput("anime1", "Best describes C.C. from Code Geass", c("Choose an answer", "Kuudere", "Tsundere", "Yandere", "Dandere")),
		selectInput("anime2", "Traveled the stars for 12,000 years", c("Choose an answer", "Yoko Littner", "Noriko Takaya", "Asuka Langley", "Ranka Lee", "Nono")),
		selectInput("history1", "Synonym of the Edo period", c("Choose an answer", "Heian", "Heisei", "Meiji", "Tokugawa", "Nara")),
		tags$hr(),
		sliderInput("code1", "When i = 5, what is the value of j? (post evaluation of j)", min=0, max=10, value=0),
		sliderInput("code2", "What is the final value of j?", min=0, max=10, value=0),
		tags$hr()
	),
		
	mainPanel(
		tabsetPanel(
			## Summary of the data. This is faster to load than the visualizations hence why I am showing this first..
			tabPanel("Code",
				h4("Code"),
				HTML('<script src="https://gist.github.com/lcolladotor/8203492.js"></script>')
			),
			
			tabPanel("Check your answers", 
				h4("Code answers"),
				verbatimTextOutput("runCode"),
				h4("Answers detail"),
				tableOutput('answers'),
				h4("Number of correct answers"),
				verbatimTextOutput('total'),
				h4("Percent of correct answers"),
				verbatimTextOutput('percent')
			)		
			
		)
	)
	
))

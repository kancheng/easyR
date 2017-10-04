library("shiny")
ui = shinyUI(
	fluidPage(
		titlePanel("IRIS Output"),
  
			tabsetPanel(
				tabPanel("SL - SW",
					h2("Sepal.Length & Sepal.Width"),
					br(),
					plotOutput("slswplot"),
					br(),
					downloadButton('slswdlpng', 'Download')
				),
				tabPanel("SL - PL",
					h2("Sepal.Length & Petal.Length"),
					br(),
					plotOutput("slplplot"),
					br(),
					downloadButton('slpldlpng', 'Download')
				),
				tabPanel("SL - PW",
					h2("Sepal.Length & Petal.Width"),
					br(),
					plotOutput("slpwplot"),
					br(),
					downloadButton('slpwdlpng', 'Download')
				),
				tabPanel("SW - PL",
					h2("Sepal.Width & Petal.Length"),
					br(),
					plotOutput("swplplot"),
					br(),
					downloadButton('swpldlpng', 'Download')
				),
				tabPanel("SW - PW",
					h2("Sepal.Width & Petal.Width"),
					br(),
					plotOutput("swpwplot"),
					br(),
					downloadButton('swpwdlpng', 'Download')
				),
				tabPanel("PL - PW",
					h2("Petal.Length & Petal.Width"),
					br(),
					plotOutput("plpwplot") ,
					br(),
					downloadButton('plpwdlpng', 'Download')
				)

			)
		)
)

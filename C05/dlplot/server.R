library("shiny")
server = function(input, output) {
	mutepar = function( xdata, ydata, manm = "", ...){
		tep.par = par(mai = c(0.5, 0.5, 0.5, 0.5))
		(tepmat3 = matrix(c( 0, 1, 0, 2, 3, 4, 0, 5, 0), 3, 3))
		layout(tepmat3, widths = c( 2, 4, 2), heights = c(2, 4, 2))
		boxplot(ydata)
		hist(xdata, main = manm, xlab = "", ylab = "")
		plot(xdata, ydata)
		boxplot( xdata, horizontal = T)
		templ = hist(ydata,plot = FALSE)$count
		barplot(templ, horiz=TRUE, col = c(0), space = 0)
		par(tep.par)
	}

	# tem
	tmsp = reactiveValues()


	# SLSW
  	output$slswplot = renderPlot({
		tmsp$slswp = mutepar( iris$Sepal.Length, iris$Sepal.Width, manm = "X(Sepal.Length) & Y(Sepal.Width)")
		tmsp$slswp
	})
	output$slswdlpng = downloadHandler(
		filename = function() { 
			paste( "slsw", '.png', sep = '') 
		},
		content = function(file) {
			png(file)
				tmsp$slswp = mutepar( iris$Sepal.Length, iris$Sepal.Width, manm = "X(Sepal.Length) & Y(Sepal.Width)")
				tmsp$slswp
			dev.off()
		},
		contentType = 'image/png'
	)

	# SLPL
  	output$slplplot = renderPlot({
		tmsp$slplp = mutepar( iris$Sepal.Length, iris$Petal.Length, manm = "X(Sepal.Length) & Y(Petal.Length)")
		tmsp$slplp
	})
	output$slpldlpng = downloadHandler(
		filename = function() { 
			paste( "slpl", '.png', sep = '') 
		},
		content = function(file) {
			png(file)
				tmsp$slplp =  mutepar( iris$Sepal.Length, iris$Petal.Length, manm = "X(Sepal.Length) & Y(Petal.Length)")
				tmsp$slplp
			dev.off()
		},
		contentType = 'image/png'
	)

	# SLPW
  	output$slpwplot = renderPlot({
		tmsp$slpwp = mutepar( iris$Sepal.Length, iris$Petal.Width, manm = "X(Sepal.Length) & Y(Petal.Width)")
		tmsp$slpwp
	})
	output$slpwdlpng = downloadHandler(
		filename = function() { 
			paste( "slpw", '.png', sep = '') 
		},
		content = function(file) {
			png(file)
				tmsp$slpwp =  mutepar( iris$Sepal.Length, iris$Petal.Width, manm = "X(Sepal.Length) & Y(Petal.Width)")
				tmsp$slpwp
			dev.off()
		},
		contentType = 'image/png'
	)

	# SWPL
  	output$swplplot = renderPlot({
		tmsp$swplp = mutepar( iris$Sepal.Width, iris$Petal.Length, manm = "X(Sepal.Width) & Y(Petal.Length)")
		tmsp$swplp
	})
	output$swpldlpng = downloadHandler(
		filename = function() { 
			paste( "swpl", '.png', sep = '') 
		},
		content = function(file) {
			png(file)
				tmsp$swplp =  mutepar( iris$Sepal.Width, iris$Petal.Length, manm = "X(Sepal.Width) & Y(Petal.Length)")
				tmsp$swplp
			dev.off()
		},
		contentType = 'image/png'
	)

	# SWPW
  	output$swpwplot = renderPlot({
		tmsp$swpwp = mutepar( iris$Sepal.Width, iris$Petal.Width, manm = "X(Sepal.Width) & Y(Petal.Width)")
		tmsp$swpwp
	})
	output$swpwdlpng = downloadHandler(
		filename = function() { 
			paste( "swpw", '.png', sep = '') 
		},
		content = function(file) {
			png(file)
				tmsp$swpwp =  mutepar( iris$Sepal.Width, iris$Petal.Width, manm = "X(Sepal.Width) & Y(Petal.Width)")
				tmsp$swpwp
			dev.off()
		},
		contentType = 'image/png'
	)


	# PLPW
  	output$plpwplot = renderPlot({
		tmsp$plpwp = mutepar( iris$Petal.Length, iris$Petal.Width, manm = "X(Petal.Length) & Y(Petal.Width)")
		tmsp$plpwp
	})
	output$plpwdlpng = downloadHandler(
		filename = function() { 
			paste( "plpw", '.png', sep = '') 
		},
		content = function(file) {
			png(file)
				tmsp$plpwp =  mutepar( iris$Petal.Length, iris$Petal.Width, manm = "X(Petal.Length) & Y(Petal.Width)")
				tmsp$plpwp
			dev.off()
		},
		contentType = 'image/png'
	)



}
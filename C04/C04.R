# 3
require(ggplot2)
data(diamonds)
head(diamonds)

# 4
hist(diamonds$carat, main = "Carat Histogram", xlab = "Carat")

# 5
plot(price ~ carat, data = diamonds)

# 6
plot(diamonds$carat, diamonds$price)

# 7
boxplot(diamonds$carat)

# 8
ggplot(data = diamonds) + geom_histogram(aes(x = carat))

# 9
ggplot(data = diamonds) + geom_density (aes(x = carat), fill = "grey50")

# 10
ggplot(diamonds, aes(x = carat, y = price)) + geom_point()

# 11
g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color))

# 12
g + geom_point(aes(color = color)) + facet_wrap(~color)

# 13
g + geom_point(aes(color = color)) + facet_grid(cut ~ clarity)

# 15
ggplot(diamonds, aes(x = carat)) + geom_histogram() + facet_wrap(~color)

# 16
ggplot(diamonds, aes(y = carat, x = 1)) + geom_boxplot()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_boxplot()

# 19
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin()

# 20
ggplot(economics, aes(x = date, y = pop)) + geom_line()

# 21
require(lubridate)
economics$year <- year(economics$date)
economics$month <- month(economics$date, label=TRUE)
econ2000 <- economics[which(economics$year >= 2000), ]

# 22
require(scales)
g <- ggplot(econ2000, aes(x=month, y=pop))
g <- g + geom_line(aes(color=factor(year), group=year))
g <- g + scale_color_discrete(name="Year")
g <- g + scale_y_continuous(labels=comma)
g <- g + labs(title="Population Growth", x="Month", y="Population")
g

# 23
require(ggthemes)
g2 <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=color))
g2 + theme_economist() + scale_colour_economist()
g2 + theme_excel() + scale_colour_excel()
g2 + theme_tufte()
g2 + theme_wsj()

# 30
# install.packages("extrafont")
library(extrafont)

# 31
font_import()

# 32
fonts()

# 36
library(extrafont)
loadfonts("win")
library(ggplot2)
head(mtcars)
getwd()
ggplot(mtcars, aes( x = wt, y = mpg)) + geom_point() +
    ggtitle("Title text goes here") +
    theme( text = element_text( size = 16, family = "Noto Sans", face = "italic"))
ggsave( "myplot.png", width = 4, height = 4, dpi =300 )

# 42
library(ggplot2)
head(diamonds)
class(diamonds)
getwd()

# 44
library(ggplot2)
head(diamonds)
class(diamonds)
getwd()

png( file = "test0.png", res = 120)
plot( price ~ carat, data = diamonds)
dev.off()

png( file = "test1.png", width = 1500, height = 850, res = 120)
plot( price ~ carat, data = diamonds)
dev.off()

png( file = "test2.png", width = 1920, height = 962, res =120)
plot( price ~ carat, data = diamonds)
dev.off()

png( file = "test3.png", width = 1920, height = 962)
plot( price ~ carat, data = diamonds)
dev.off()

png( file = "test4.png", width = 1920, height = 962, res = 300)
plot( price ~ carat, data = diamonds)
dev.off()

png( file = "test5.png", width = 1920, height = 962, res = 30)
plot( price ~ carat, data = diamonds)
dev.off()

png( file = "test6.png", width = 1920, height = 962, res = 90)
plot( price ~ carat, data = diamonds)
dev.off()

# 45
library(ggplot2)
head(mtcars)
head(diamonds)
getwd()

# 56
# PDF 輸出，寬高皆為英寸
pdf( file = "diam.pdf", width = 8, height = 8)
plot( price ~ carat, data = diamonds)
dev.off()
# PDF 輸出，調整成公分
pdf( file = "diamcm.pdf", width = 8/2.54, height = 8/2.54)
plot( price ~ carat, data = diamonds)
dev.off()
# SVG 輸出
svg( file = "diam.svg", width = 4, height = 4)
plot( price ~ carat, data = diamonds)
dev.off()
# WMF 輸出，僅能在Windows 上使用
win.metafile( file = "diam.wmf", width = 4, height = 4)
plot( price ~ carat, data = diamonds)
dev.off()
# PNG 輸出，單位為像素
png( file = "diam.png", width = 400, height = 400)
plot( price ~ carat, data = diamonds)
dev.off()
# 多個 PNG 輸出，單位為像素
png( file = "muldiam%d.png", width = 400, height = 400)
plot( price ~ carat, data = diamonds)
plot( carat ~ price, data = diamonds)
print((ggplot(mtcars, aes(mpg, wt)) + geom_point()))
dev.off()
# TIFF 輸出，單位為像素
tiff( file = "diam.tiff", width = 400, height = 400)
plot( price ~ carat, data = diamonds)
dev.off()

# 57
# 多個 TIFF 輸出，單位為像素
tiff( file = "muldiam%d.tiff", width = 400, height = 400)
plot( price ~ carat, data = diamonds)
plot( carat ~ price, data = diamonds)
print((ggplot(mtcars, aes(mpg, wt)) + geom_point()))
dev.off()
# BMP 輸出，單位為像素
bmp( file = "diam.bmp", width = 400, height = 400)
plot( price ~ carat, data = diamonds)
dev.off()
#jpeg 輸出，單位為像素
jpeg( file = "diam.jpeg", width = 400, height = 400)
plot( price ~ carat, data = diamonds)
dev.off()
# ggplot2 套件繪圖輸出之 ggsave()
ggplot(mtcars, aes(mpg, wt)) + geom_point()
ggsave("mtcars.png")
ggsave("mtcars.wmf")
ggsave("mtcars.svg")
ggsave("mtcars.bmp")
ggsave("mtcars.jpeg")
ggsave("mtcars.tiff")
ggsave("mtcars.pdf")
ggsave("mtcars.pdf", width = 4, height = 4)
ggsave("mtcars.pdf", width = 4, height = 4, unit = "cm")
# ggplot2 套件繪圖輸出之 print()
png( file = "mtcarspng.png", res = 120)
print(ggplot(mtcars, aes(mpg, wt)) + geom_point())
dev.off()

# 58
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) { 
  library(grid) 
  # Make a list from the ... arguments and plotlist 
  plots <- c(list(...), plotlist) 
  numPlots = length(plots) 
  # If layout is NULL, then use 'cols' to determine layout 
  if (is.null(layout)) { 
    # Make the panel 
    # ncol: Number of columns of plots 
    # nrow: Number of rows needed, calculated from # of cols 
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)), 
                    ncol = cols, nrow = ceiling(numPlots/cols)) 
  } 
 if (numPlots==1) { 
    print(plots[[1]]) 
  } else { 
    # Set up the page 
    grid.newpage() 
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout)))) 
 
    # Make each plot, in the correct location 
    for (i in 1:numPlots) { 
      # Get the i,j matrix positions of the regions that contain this subplot 
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE)) 
 
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row, 
                                      layout.pos.col = matchidx$col)) 
    } 
  } 
} 

# 59
library(ggplot2)
# This example uses the ChickWeight dataset, which comes with ggplot2
# First plot
p1 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet, group=Chick)) +
    geom_line() +
    ggtitle("Growth curve for individual chicks")
# Second plot
p2 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) +
    geom_point(alpha=.3) +
    geom_smooth(alpha=.2, size=1) +
    ggtitle("Fitted growth curve per diet")
# Third plot
p3 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, colour=Diet)) +
    geom_density() +
    ggtitle("Final weight, by diet")
# Fourth plot
p4 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, fill=Diet)) +
    geom_histogram(colour="black", binwidth=50) +
    facet_grid(Diet ~ .) +
    ggtitle("Final weight, by diet") +
    theme(legend.position="none")        # No legend (redundant in this graph) 
multiplot(p1, p2, p3, p4, cols=2)

# 61
# iris
head(iris)
class(iris)
NROW(iris)
iris1.par = par(mai=c(0.3, 0.3, 0.3, 0.3), mfrow=c(3, 2))
boxplot(iris$Sepal.Length, ylim=c(-1, 8))
hist(iris$Sepal.Width, xlim=c(-1, 8))
plot(iris$Petal.Length)
plot(iris$Petal.Width)
hist(iris$Petal.Width, xlim=c(-1, 8))
hist(iris$Petal.Length, xlim=c(-1, 8))
par(iris1.par)
par(mai=c(0.3, 0.3, 0.3, 0.3), mfcol=c(2, 3))

# 63
iris2.par = par(mai=c(0.5, 0.5, 0.5, 0.5))
(irismat1 = matrix(c(1,2,1,3), 2, 2))
layout(irismat1)
plot(iris$Petal.Width)
hist(iris$Petal.Width, xlim=c(-1, 8))
hist(iris$Petal.Length, xlim=c(-1, 8))
par(iris2.par)

# 65
iris3.par = par(mai=c(0.5, 0.5, 0.5, 0.5))
 (irismat2 = matrix(c(2,1,0,3), 2, 2))
layout(irismat2, widths=c(3, 1), heights=c(1, 3))
plot(iris$Petal.Width)
hist(iris$Petal.Width, xlim=c(-1, 8))
hist(iris$Petal.Length, xlim=c(-1, 8))
par(iris3.par)

# 67
iris4.par = par(mai=c(0.5, 0.5, 0.5, 0.5))
 (irismat3 = matrix(c( 0, 1, 0, 2, 3, 4, 0, 5, 0), 3, 3))
layout(irismat3, widths=c( 2, 4, 2), heights=c(2, 4, 2))
boxplot(iris$Petal.Length, ylim = c( 1, 7))
hist(iris$Sepal.Length, xlim = c( 4, 8))
Sepal.Length = iris$Sepal.Length
Petal.Length = iris$Petal.Length
plot(Sepal.Length, Petal.Length)
points(Sepal.Length [1:50], Petal.Length[1:50])
points(Sepal.Length [51:100], Petal.Length[51:100], col="red")
points(Sepal.Length [101:150], Petal.Length[101:150], col="green")
boxplot(iris$Sepal.Length,horizontal=T, ylim = c( 4.5, 8.0))
templ = hist(Petal.Length,plot = FALSE)$count
barplot(templ, horiz=TRUE)
par(iris4.par)

# 69
# 原始繪圖
library(ggplot2)
ggplot(iris)+
    geom_point(aes(x=Sepal.Length,y=Sepal.Width,colour=Species))+
    geom_text(aes(x=Sepal.Length,y=Sepal.Width+0.1,label=Species))
# install.packages("ggrepel")
library(ggrepel)
ggplot(iris) + 
    geom_point(aes( x = Sepal.Length, y = Sepal.Width, colour = Species )) +
    geom_text_repel(aes( x = Sepal.Length, y = Sepal.Width, label = Species ))

# 71
library(ggplot2)
mydf <- data.frame(class=rep(c("dbms", "mis"), each=5),
                   club=rep(paste0("clu.", 1:5), 2),
                   len=c(80, 76, 65, 80, 81, 76, 85, 60, 78, 60))

# 72
row.names(mydf) <- LETTERS[1:nrow(mydf)]

# 73
p <- ggplot(data=mydf, aes(x=club, y=len, group=class, label=rownames(mydf))) +
  geom_line(aes(color=class)) +
  geom_point(aes(color=class))
p

# 74
p + geom_text(size=6, nudge_x=0.2, nudge_y=0.5, aes(color=class)) + 
  guides(colour = guide_legend(override.aes = list(size=1,linetype=1)))

# 75
# 開啟多個視窗
windows()
plot(iris[ , 1])
windows()
plot(iris[ , 2])
windows()
plot(iris[ , 3])
windows()
plot(iris[ , 4])

# 76
# install.packages("showtext")

# 78
library("showtext")
setwd("path dir")
dir()
font.add("NSCT", "NotoSansCJKtc-Thin.otf")
showtext.auto(enable = TRUE)
par(family = 'NSCT')
par(mfrow = c( 1, 2), oma = c( 2, 1, 2, 1))
hist(iris[ , 1])
text( 6, 20, "這是直方圖", col = "blue", cex = 2)
plot( iris[ , 1], iris[ , 2],
xaxt = "n", bty = "n",
xlab = "", xlim = c( 0, 8),
ylim = c( 0, 5))
axis( 1, at = 0:8,
labels = letters[1:9],
tick = FALSE)
text(2,3,"這是散佈圖",
col = "red",
cex = 2)
title( '這裡是主標題', family ="NSCT",
outer = TRUE,
line = -1,
cex.main = 2)
mtext("這是下方文字", side = 1,
line = 6, at = 6, col = "green")
mycolor = rainbow( 100, alpha = 0.6)[1:80]
rasterImage(t(mycolor), 0, 0, 8, 1, interpolate = FALSE)

# 80
windows()
par(mfrow = c(2,1))
s.title = "Scatterplot of iris"
plot(iris[,1], ylim = c(-5, 10), main = s.title)
b.title = "Boxplot of iris"
boxplot(iris[,2], ylim = c(-5, 10), main = b.title)

# 81
windows()
par(mfrow = c(2,1))
s.title = "Scatterplot of iris"
plot(iris[,1], ylim = c(0, 8), main = s.title)
b.title = "Boxplot of iris"
boxplot(iris[,2], ylim = c(0, 8), main = b.title)

# 82
windows()
par(mfrow = c(2,1))
hist( iris[ ,4], xlim = c( -5, 10), main = "")
title("Histogram of time ( -5, 10)")
hist( iris[ ,4], xlim = c( 0, 5), main = "")
title("Histogram of time ( 0, 5)")

# 83
tline = iris[ ,3]
windows()
par(mfrow = c(3,1))
plot(tline, type = "l", lwd = 3)
plot(tline, type = "l", col = "red")
plot(tline, type = "l", lty = "dashed")

# 84
ttype = iris[ ,4]
windows()
par(mfrow = c(3,2))
# points
plot(ttype, type = "p")
# lines
plot( ttype, type = "l")
# both
plot( ttype, type = "b") 
# histogram - like
plot( ttype, type = "h")
# none
plot( ttype, type = "n")

# 85
windows()
plot( iris$Sepal.Length, iris$Petal.Length, 
    xlim = c(-1, max(iris$Sepal.Length)),
    ylim = c(-1, max(iris$Petal.Length)))
# abline 函數為控制繪圖的線
# 可以將資料進行迴歸後輸入
abline( lm(iris$Petal.Length ~ iris$Sepal.Length), col = "black")
# col 為控制顏色
abline( h = 0, col = "grey")
abline( v = 0, col = "grey")
# h 為根據 y 軸的水平線
abline( h = 2, col = "red", lty = 2)
# v 為根據 x 軸的垂直線
abline( v = 5.5, col = "blue", lty = 3)
# lwd 寬度
# a 與 b 之間是相互關連， a 為 y 軸起始，b 則為斜率
abline( a = 1, b = 0.7, col = "green", lty = 4, lwd = 2)

# 87
tlidt1 = iris[, 1]
tlidt2 = iris[, 3]
windows()
par(mfrow = c(2,1))
# pch 為控制散佈的點圖形
plot( tlidt1, tlidt2, pch = 14, col = "blue")
# lines 會將散佈的點連起來
lines( tlidt1, tlidt2)
title("Line")
# order 產生排序後數列資料
sequence  = order(tlidt1)
plot( tlidt1, tlidt2, pch = 16, col = "blue")
lines( tlidt1[sequence], tlidt2[sequence])

# 88
asdtx = runif(12)
asdty = rnorm(12)
asdtx
asdty
windows()
plot( asdtx, asdty, main = "Arrows & Segments")
arrows( asdtx[1], asdty[1], 
    asdtx[2], asdty[2], 
    col = "black", length = 0.2)
segments(asdtx[3], asdty[3],
    asdtx[4], asdty[4], col = "red")
segments(asdtx[3:4], asdty[3:4],
asdtx[5:6], asdty[5:6], col = c("blue", "green"))

# 90
windows()
colr.p = par(mai=c(0.7, 0.7, 0.7, 0.7))
(colr.m = matrix(c( 1, 2, 3, 1, 4, 5), 3, 2))
layout(colr.m)
plot( 1:10, rep( 1, 10), pch = 20,
    col = 1:10, cex = 5,
    xlab = "", ylab = "")
text( 1:10, rep(1.2, 10), labels = 1:10)
plot( 1, col = 1:10, cex = 5,
    xlab = "x", ylab = "y", type = "n",
    main = "fg",fg = "blue")
plot( 1, col = 1:10, cex = 5,
    xlab = "x", ylab = "y", type = "n",
    main = "col.axis(red) & col.main(blue)",
    col.axis = "red",
    col.main="blue")
plot( 1, col = 1:10, cex = 5,
    xlab = "x", ylab = "y", type = "n",
    main = "col.lab(green)", col.lab = "green")
plot( 1, col = 1:10, cex = 5,
    xlab = "x", ylab = "y", type = "n")
title( main = "My Title", col.main = "red", 
    sub = "My Sub-title", col.sub = "blue", 
    xlab = "My X label",  ylab = "My Y label",
    col.lab = "green", cex.lab = 2)
par(colr.p)

# 92
head(mtcars)
class(mtcars)
NROW(mtcars)
rownames(mtcars)
colnames(mtcars)

# 93
windows()
x  = as.matrix(mtcars)
rc = rainbow(nrow(x), start = 0, end = .3)
cc = rainbow(ncol(x), start = 0, end = .3)
hv = heatmap(x, col = cm.colors(256), scale = "column",
    RowSideColors = rc, ColSideColors = cc, 
    margins = c(5,10), 
    xlab = "specification variables",
    ylab =  "Car Models",
              main = "heatmap1")
utils::str(hv) # the two re-ordering index vectors

# 95
head(rc)
NROW(rc)
NROW(mtcars)
head(cc)
NROW(cc)
NCOL(mtcars)
head(cm.colors(256))
NROW(cm.colors(256))

# 96
windows()
## no column dendrogram (nor reordering) at all:
heatmap(x, Colv = NA, col = cm.colors(256), scale = "column",
    RowSideColors = rc, margins = c(5,10),
    xlab = "specification variables", ylab =  "Car Models",
    main = "heatmap2")

# 98
windows()
heatmap(x, Rowv = NA, Colv = NA, scale = "column",
    main = "heatmap3")

# 100
windows()
hv2 = heatmap(x, col = cm.colors(256), scale = "column",
    distfun = function(x) dist(x, method = "euclidean"), 
    hclustfun = function(x) hclust(x, method = "ward.D2"),
    RowSideColors = rc, ColSideColors = cc, 
    margins = c(5,10), 
    xlab = "specification variables",
    ylab =  "Car Models",
     main = "heatmap4")

# 106
# install
install.packages("circlize")
install.packages("dendextend")
# library
library("circlize")
library("dendextend")
iris = datasets::iris
iris2 = iris[,-5]
species_labels = iris[,5]
library(colorspace)
species_col = rev(rainbow_hcl(3))[as.numeric(species_labels)]
d_iris = dist(iris2)
hc_iris = hclust(d_iris, method = "complete")
iris_species = rev(levels(iris[,5]))
dend = as.dendrogram(hc_iris)
dend = rotate(dend, 1:150)

dend = color_branches(dend, k=3) #, groupLabels=iris_species)

labels_colors(dend) =
rainbow_hcl(3)[sort_levels_values(
as.numeric(iris[,5])[order.dendrogram(dend)]
)]

labels(dend) = paste(as.character(iris[,5])[order.dendrogram(dend)],
"(",labels(dend),")", 
sep = "")
dend = hang.dendrogram(dend,hang_height=0.1)
dend = set(dend, "labels_cex", 0.5)
windows()
par(mar = rep(0,4))
circlize_dendrogram(dend)

windows()
par(mar = c(3,3,3,7))
plot(dend, 
main = "Clustered Iris data set
(the labels give the true flower species)", 
horiz =  TRUE,  nodePar = list(cex = .007))
legend("topleft", legend = iris_species, fill = rainbow_hcl(3))

# 111
windows()
bcp.par = par(mai=c(0.7, 0.7, 0.7, 0.7))
    (bcp.mat = matrix(c( 1, 2, 1, 3), 2, 2))
    layout(bcp.mat)
plot( 0, xlim = c( 0,20), ylim = c( 0, 18), 
    type = "n", xlab = "", ylab = "",
    main = "OAO")
rect( 0, 0, 20, 18, border = 0, lwd = 4 , col = 3)
rect( 18 * 3 / 8, 
    18 * 2/8,
    18 * 6/8,
    18 * 4/8, border = 0, lwd = 4 , col = 1)
rect( 18 * 1 / 8, 
    18 * 4/8,
    18 * 3/8,
    18 * 6/8, border = 0, lwd = 4 , col = 1)
rect( 18 * 6 / 8, 
    18 * 4/8,
    18 * 8/8,
    18 * 6/8, border = 0, lwd = 4 , col = 1)
rect( 18 * 2 / 8, 
    18 * 0.8/8,
    18 * 3/8,
    18 * 3/8, border = 0, lwd = 4 , col = 1)
rect( 18 * 6 / 8, 
    18 * 0.8/8,
    18 * 7/8,
    18 * 3/8, border = 0, lwd = 4 , col = 1)

plot( 0, xlim = c( 0,15), ylim = c( 0, 16), 
    type = "n", xlab = "", ylab = "",
    main = "Rectangles")
rect( 0.5, 0, 12.5, 12.5)
n = 0:6
rect( 1 + n, 1 + n, 2 + 2 * n, 2 + 2 * n, col = rainbow(4),
border = n+1, lwd = 4)

symbols( x = c(5, 10, 15), y = c(5, 10, 15), 
    circles = c( 1, 2, 3), 
    xlim = c(0, 20), ylim = c(0, 20), 
    bg = c("blue", "yellow", "gray"),
    xlab = "", ylab = "")

par(bcp.par)

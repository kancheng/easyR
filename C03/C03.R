# 4
# apply
 (x = matrix(1:24, nrow=4))
#1: rows, 2:columns
apply(x, 1, sum)
apply(x, 2, sum)
apply(x, 1, sqrt)
apply(x, 2, sqrt)

# 5
theMatrix = matrix(1:9, nrow = 3)
apply(theMatrix, 1, sum)
apply(theMatrix, 2, sum)
rowSums(theMatrix)
colSums(theMatrix)

# 6
theMatrix[2, 1] = NA
apply(theMatrix, 1, sum)
apply(theMatrix, 1, sum, na.rm = TRUE)
rowSums(theMatrix)
rowSums(theMatrix, na.rm = TRUE)

# 8
# lapply & sapply & vapply
# 產生範例資料
lsv.x = list(a = 1:10, 
    beta = exp(-3:3), 
    logic = c( TRUE, FALSE, FALSE, TRUE))
lsv.x
# lapply 處理後會回傳 List
(mly = lapply( lsv.x, mean))
class(mly)
(lapply( lsv.x, quantile, probs = 1:3/4))

# 9
(sapply( lsv.x, quantile))
i39 = sapply( 3:9, seq) 
class( i39)
( sly.5n = sapply( i39, fivenum))
class(sly.5n)
( sly.5nf = sapply( i39, fivenum, 
    simplify = FALSE , 
    USE.NAMES = FALSE ))
class(sly.5nf)

# 10
theList = list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4, 2), D = 2)
theList

# 11
lapply(theList, sum)
sapply(theList, sum)
theNames = c("Jared", "Deb", "Paul")
lapply(theNames, nchar)

# 12
(v1 = list( n1 = 8, n2 = 9:29, c = c('b','a')))
(v2 = pi)
(v3 = data.frame(a=rnorm(10),b=1:10))
rly.data = list( v1, v2, v3)
rapply( rly.data, sort, classes = 'numeric',how = 'replace')

# 13
rapply( rly.data, function(x)paste( x,'no.sort'),
    classes = "character",
    deflt = NA, how = "list")

# 14
(v1 = 5:15)
(v2 = -5:-15)
(v3 = round(runif(11,-5,5)))
mapply( max, v1, v2, v3)
mapply( sum, v1, v2, v3)
v1
v2
v3

# 15
firstList = list(A = matrix(1:16, 4), 
	B = matrix(1:16, 2), 
	C = 1:5)
secondList = list(A = matrix(1:16, 4), 
	B = matrix(1:16, 8), 
	C = 15:1)

# 16
mapply(identical, firstList, secondList)
simpleFunc = function(x, y)
{
   NROW(x) + NROW(y)
}
mapply(simpleFunc, firstList, secondList)

# 17
tapply( iris[ , 2], iris[ , 4], mean)
as.factor(iris[ , 4])
irm = iris[ iris$Petal.Width == 0.1, ]
(t.ans1 = mean(irm[ , 2]))
(t.ans2 = as.numeric(
    tapply( iris[ , 2], iris[ , 4], mean)[1])
    )
t.ans1 == t.ans2

# 18
ev = new.env()
ev$val = 1:10
ev$beta = exp(-3:3)
ev$logic = c( TRUE, FALSE, FALSE, TRUE)
ev
eapply(ev, mean)
ls()
str(eapply(environment(), object.size))

# 19
require(ggplot2)
data(diamonds)
head(diamonds)

# 20
aggregate(price ~ cut, diamonds, mean)
aggregate(price ~ cut + color, diamonds, mean)

# 21
aggregate(cbind(price, carat) ~ cut, diamonds, mean)
aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)

# 22
# install.packages(plyr)

# 23
require(plyr)
head(baseball)

# 24
baseball$sf[baseball$year < 1954] = 0
any(is.na(baseball$sf))
baseball$hbp[is.na(baseball$hbp)] = 0 
any(is.na(baseball$hbp))
baseball = baseball[baseball$ab >= 50, ]

# 25
baseball$OBP = with(baseball, (h + bb + hbp)/(ab + bb + hbp + sf))
tail(baseball)

# 26
obp = function(data)
{
	c(OBP = with(data, sum(h + bb + hbp)/sum(ab + bb + hbp + sf)))
}

careerOBP = ddply(baseball, .variables = "id", .fun = obp)
careerOBP = careerOBP[order(careerOBP$OBP, decreasing = TRUE), ]
head(careerOBP, 10)

# 27
theList = list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4, 2), D = 2)
lapply(theList, sum)
llply(theList, sum)
identical(lapply(theList, sum), llply(theList, sum))
sapply(theList, sum)
laply(theList, sum)

# 28
aggregate(price ~ cut, diamonds, each(mean, median))
system.time(dlply(baseball, "id", nrow))
iBaseball = idata.frame(baseball)
system.time(dlply(iBaseball, "id", nrow))

# 29
# install.packages(data.table)
require(data.table)

# 30
theDF = data.frame(A=1:10,
                    B=letters[1:10],
                    C=LETTERS[11:20],
                    D=rep(c("One", "Two", "Three"), length.out=10))
theDT = data.table(A=1:10,
                    B=letters[1:10],
                    C=LETTERS[11:20],
                    D=rep(c("One", "Two", "Three"), length.out=10))
theDF
theDT
class(theDF$B)
class(theDT$B)

# 31
diamondsDT = data.table(diamonds)
diamondsDT
theDT[1:2, ]
theDT[theDT$A >= 7, ]

# 32
theDT[, list(A, C)]
theDT[, B]
theDT[, list(B)]
theDT[, list(A, C)]
theDF[, c(1,3)]

# 33
theDF[, 2]
theDT[, B]
theDF["B"]
theDT[, list(B)]

# 34
theDT[, "B", with = FALSE]
theDT[, c("A", "C"), with = FALSE]
theDT[, "B", with = FALSE]
theDT[, list(B)]
theDT[, "B", with = TRUE]

# 35
theDT[, c("A", "C"), with = FALSE]
theDT[, list(A, C)]
theDT[, c("A", "C"), with = TRUE]

# 36
tables()
setkey(theDT, D)
theDT
key(theDT)
tables()

# 37
theDT["One", ]
theDT[c("One", "Two"), ]
setkey(diamondsDT, cut, color)

# 38
diamondsDT[J("Ideal", "E"), ]
diamondsDT[J("Ideal", c("E", "D")), ]

# 39
aggregate(price ~ cut, diamonds, mean)

# 40
diamondsDT[, mean(price), by = cut]
diamondsDT[, list(price = mean(price)), by = cut]

# 41
diamondsDT[, mean(price), by = list(cut, color)]

# 42
diamondsDT[, list(price = mean(price), carat = mean(carat)), by = cut]
diamondsDT[, list(price = mean(price), carat = mean(carat) ,
caratSum = sum(carat)), by = cut]

# 43
diamondsDT[, list(price = mean(price), carat = mean(carat)),
by = list(cut, color)]

# 47
sport = c("Hockey", "Baseball", "Football")
league = c("NHL", "MLB", "NFL")
trophy = c("Stanley Cup", "Commissioner's Trophy",
            "Vince Lombardi Trophy")
trophies1 = cbind(sport, league, trophy)
trophies2 = data.frame(sport = c("Basketball", "Golf"),
                        league = c("NBA", "PGA"),
                        trophy = c("Larry O'Brien Championship Trophy", "Wanamaker Trophy"),
                        stringsAsFactors = FALSE)
trophies = rbind(trophies1, trophies2)
cbind(Sport = sport, Association = league, Prize = trophy)

# 49
download.file( url = "https://github.com/kancheng/easyR/raw/master/C03/US_Foreign_Aid.zip", 
	destfile = "ForeignAid.zip")
unzip( "ForeignAid.zip", exdir = “data12")

# 50
require(stringr)
theFiles = dir("data12/", pattern="\\.csv")
for(a in theFiles){
nameToUse = str_sub(string=a, start=12, end=18)
temp = read.table(file=file.path("data12", a), header=TRUE, sep=",", stringsAsFactors=FALSE)
assign(x=nameToUse, value=temp)
}

# 52
Aid90s00s = merge(x=Aid_90s, y=Aid_00s,
        by.x=c("Country.Name", "Program.Name"),
        by.y=c("Country.Name", "Program.Name"))
head(Aid90s00s)

# 53
require(plyr)
Aid90s00sJoin = join(x = Aid_90s, y = Aid_00s, by = c("Country.Name", "Program.Name"))
head(Aid90s00sJoin)

# 54
frameNames = str_sub(string = theFiles, start = 12, end = 18)
frameList = vector("list", length(frameNames))
names(frameList) = frameNames
for (a in frameNames)
{
   frameList[[a]] = eval(parse(text = a))
}

# 58
head(frameList[[1]])
head(frameList[["Aid_00s"]])
head(frameList[[5]])
head(frameList[["Aid_60s"]])

# 60
allAid = Reduce(function(...)
{
join(..., by = c("Country.Name", "Program.Name"))
}, frameList)
dim(allAid)
require(useful)
corner(allAid, c = 15)
bottomleft(allAid, c = 15)

# 62
require(data.table)
dt90 = data.table(Aid_90s, key = c("Country.Name", "Program.Name"))
dt00 = data.table(Aid_00s, key = c("Country.Name", "Program.Name"))
dt0090 = dt90[dt00]

# 64
head(Aid_00s)

# 66
require(reshape2)
melt00 = melt(Aid_00s, id.vars=c("Country.Name", "Program.Name"), variable.name="Year", value.name="Dollars")
tail(melt00, 10)

# 68
require(scales)
melt00$Year = as.numeric(str_sub(melt00$Year, start=3, 6))
meltAgg = aggregate(Dollars ~ Program.Name + Year, data=melt00, sum, na.rm=TRUE)
meltAgg$Program.Name = str_sub(meltAgg$Program.Name, start=1, end=10)
ggplot(meltAgg, aes(x=Year, y=Dollars)) +
        geom_line(aes(group=Program.Name)) +
        facet_wrap(~ Program.Name) +
        scale_x_continuous(breaks=seq(from=2000, to=2009, by=2)) +
        theme(axis.text.x=element_text(angle=90, vjust=1, hjust=0)) +
        scale_y_continuous(labels=multiple_format(extra=dollar, multiple="B"))

# 69
cast00 = dcast(melt00, Country.Name + Program.Name ~ Year, value.var = "Dollars")
head(cast00)

# 71
paste("Hello", "Jared", "and others")
paste("Hello", "Jared", "and others", sep = "/")
paste(c("Hello", "Hey", "Howdy"), c("Jared", "Bob", "David"))

# 72
paste("Hello", c("Jared", "Bob", "David"))
paste("Hello", c("Jared", "Bob", "David"), c("Goodbye", "Seeya"))

# 73
vectorOfText = c("Hello", "Everyone", "out there", ".")
paste(vectorOfText, collapse = " ")
paste(vectorOfText, collapse = "*")

# 74
person = "Jared"
partySize = "eight"
waitTime = 25
paste("Hello ", person, ", your party of ", partySize, 
" will be seated in ", waitTime, " minutes.", sep="")

# 75
sprintf("Hello %s, your party of %s will be seated in %s minutes", 
person, partySize, waitTime)

# 76
sprintf("Hello %s, your party of %s will be seated in %s minutes", 
c("Jared", "Bob"), c("eight", 16, "four", 10), waitTime)

# 78
require(XML)
theURL = "http://www.loc.gov/rr/print/list/057_chron.html"
presidents = readHTMLTable(theURL, which=3, as.data.frame=TRUE, 
skip.rows=1, header=TRUE, 
stringsAsFactors=FALSE)

# 82
yearMatrix = data.frame(Reduce(rbind, yearList))
head(yearMatrix)

# 83
names(yearMatrix) = c("Start", "Stop")
presidents = cbind(presidents, yearMatrix)
presidents$Start = as.numeric(as.character(presidents$Start))
presidents$Stop = as.numeric(as.character(presidents$Stop))

# 84
head(presidents)
tail(presidents)

# 86
str_sub(string = presidents$PRESIDENT, start = 1, end = 3)
str_sub(string = presidents$PRESIDENT, start = 4, end = 8)
presidents[str_sub(string = presidents$Start, start = 4, end = 4) == 1, c("YEAR", "PRESIDENT", "Start", "Stop")]

# 88
johnPos = str_detect(string = presidents$PRESIDENT, pattern = "John")
presidents[johnPos, c("YEAR", "PRESIDENT", "Start", "Stop")]

# 89
badSearch = str_detect(presidents$PRESIDENT, "john")
goodSearch = str_detect(presidents$PRESIDENT, 
	ignore.case("John"))
sum(badSearch)
sum(goodSearch)

# 90
con = url("http://www.jaredlander.com/data/warTimes.rdata")
load(con)
close(con)
AA = url("https://github.com/kancheng/easyR/blob/master/C03/warTimes.rdata?raw=true")
load(AA)
close()

# 91
head(warTimes, 10)

# 92
warTimes[str_detect(string = warTimes, pattern = "-")]

# 93
theTimes = str_split(string = warTimes, pattern = "(ACAEA)|-", n = 2)
head(theTimes)

# 94
which(str_detect(string = warTimes, pattern = "-"))
theTimes[[147]]
theTimes[[150]]

# 95
theStart = sapply(theTimes, FUN = function(x) x[1])
head(theStart)

# 96
theStart = str_trim(theStart)
head(theStart)

# 97
str_extract(string = theStart, pattern = "January")

# 98
theStart[str_detect(string = theStart, pattern = "January")]

# 99
head(str_extract(string = theStart, "[0-9][0-9][0-9][0-9]"), 20)
head(str_extract(string = theStart, "[0-9]{4}"), 20)
head(str_extract(string = theStart, "\\d{4}"), 20)

# 100
str_extract(string = theStart, "\\d{1,3}")

# 101
head(str_extract(string = theStart, pattern = "^\\d{4}"), 30)
head(str_extract(string = theStart, pattern = "\\d{4}$"), 30)
head(str_extract(string = theStart, pattern = "^\\d{4}$"), 30)

# 103
head(str_replace(string=theStart, pattern="\\d", replacement="x"), 30)
head(str_replace_all(string=theStart, pattern="\\d", replacement="x"), 30)
head(str_replace_all(string=theStart, pattern="\\d{1,4}", replacement="x"), 30)

# 104
commands = c("<a href=index.html>The Link is here</a>", "<b>This is bold text</b>")
str_replace(string=commands, pattern="<.+?>(.+?)<.+>", replacement="\\1")

# 107
# set.seed 設為 168
set.seed(168)
# 建立範例資料
mydata <- data.frame(x1=47:56,
                     x2=paste0("SD", 1011173:1011182),
                     x3=sample(0:6, 10, replace=TRUE),
                     x4=sample(0:6, 10, replace=TRUE),
                     x5=sample(0:6, 10, replace=TRUE),
                     x6=sample(3, 10, replace=TRUE))
# 在範例資料用出 3, 4, 5 列有同時為 0 的 狀況
# Dataframea名稱[ 橫列 , 直行]
mydata[c(3,6,7), c(3:5)] <- c(0, 0, 0)
# 檢視範例資料
mydata

# 108
# 使用 which 抓值
# which 當中的 mydata$x3 == 0 & mydata$x4 == 0, mydata$x5 == 0 為 x3、x4、x5 同時為 0 的條件
ind <- which(mydata$x3 == 0 & mydata$x4 == 0, mydata$x5 == 0)
# 檢視 符合條件的橫列編號
ind
# 檢視 範例資料中符合條件的橫列
mydata[ind, ]
# 刪除範例資料中符合條件的橫列
mydata[-ind, ]

# 110
if ( any(mydata$x3 == 0 & mydata$x4 == 0 & mydata$x5 == 0 ) ){
ind = which(mydata$x3 == 0 & mydata$x4 == 0 & mydata$x5 == 0 )
mydata = mydata[ -ind, ]
}else{
cat( "OwO\n")
}

# 112
nac = function( data, weg){
    ## data.frame row 轉換成向量
    dfvtr = function( data, dfrow){
        vtcda = as.numeric(data[ dfrow, 2:NCOL(data)])
        vtcda
    }
    ## 求算 NA 比率
    nacllog = function( data, dcol){
        # 權重 DATA
        na2dt = dfvtr( data, dcol)
        # 權重分子 molecular
        n2dmcr = length(na.omit(na2dt))
        # 權重分母 Denominator
        n2dtmr = length(na2dt)
        nall = n2dmcr/n2dtmr
        nall
    }
    ## NA 基準合併成向量
    nabc = function(data){
        d = numeric()
        for( ncg in 1:NROW(data)){
            k = nacllog( data, ncg)
            d = c( d, k)
        }
        d
    }
    ## 篩選
    data[!(nabc(data) < weg),]
}

# 114
for(i in 1:6) {
    nam = paste("r", i, sep = ".")
    assign(nam, 1:i)
}
ls(pattern = "^r..$")
r.1
r.2
r.3
r.4
r.5
r.6

# 115
kan = c( "t1", "t2", "t3", "t4")
assign( kan, 1:4)
ls()
t1

# 116
colna = names(iris)
colna

# 117
for( i in 1:ncol(iris)){
    comds = paste0( "iris$", colna[i])
    print(comds)
}

# 118
for( i in 1:ncol(iris)){
    comds = paste0( "iris$", colna[i])
    evalp = eval(parse(text = comds))
    print(head(evalp))
}
head(iris)

# 119
ls()
for( i in 1:ncol(iris)){
    comds = paste0( "iris$", colna[i])
    evalp = eval(parse(text = comds))
    objna = colna[i]
    assign( objna,
        evalp
    , env = .GlobalEnv)
}
ls()

# 120
head( iris)
head( Petal.Length, 10)
head( Petal.Width, 10)
head( Sepal.Length, 10)
head( Sepal.Width, 10)
head( Species, 10)

# 121
# 資料來源的工作目錄
setwd("C:/rtej")
getwd()
# 匯入 CSV function
tmprt = function(rtcsv){
read.csv( rtcsv, stringsAsFactors = FALSE)
}
#輸出 CSV function
wrta = function(xdo , ycsv)
{
    write.table( xdo, file= ycsv, quote = FALSE, sep = ",", row.names = FALSE)
}
# 觀察 工作目錄的所有 File
dir()
# 匯入檔案
tejdata = tmprt("tej.csv")
# 檢視該檔案的前三橫行
head( tejdata, 3)

# 122
# 將直行名稱存起來
tejcol = names(tejdata)
# 由第一個橫列是中文，自己習慣先處理成英文，所以先將存出來的第一個值換成 year
tejcol[1] = "year"
# 將直行名稱塞回去 
colnames(tejdata) = tejcol
# 將第一行去掉
tejdata = tejdata[, 2:ncol(tejdata)]
# 檢視處理後的結果(前三橫行)
head( tejdata, 3)
# 測試 sort 函數
# 小至大排列 ，其預設引數 decreasing = FALSE
sort( tejdata$X2016.10.31)
# 大至小排列
sort( tejdata$X2016.10.31, decreasing = TRUE)

# 123
worksort = function(dt ,chrn) {
    # 根據匯入 data.frame 的建立一個空的直行，並進行序列編號
    sortdf = data.frame( nm = 1:rep(nrow(dt)))
    # 將匯入 data.frame 的 個直行名稱，存起來
    dtna = names(dt)
    # 根據 data.frame 的直行數量來進行處理
    for( sorwn in 1:ncol(dt)){
        # 之後執行的 R命令 ，用 eval() 前的字串處理
        cmds = paste0(chrn,"$", dtna[sorwn])
        # eval() 匯入所要執行的字串，作為命令執行
        evaltem = eval(parse(text = cmds))
        # 執行由小至大排列的排序，其 NA 也要進行處理，引數為 na.last 
        # 執行後 數字 小至大排列 ， NA 值 置最後。
        temscl = sort( evaltem, decreasing = FALSE, na.last= TRUE)
        # 合併 處理後的結果至 sortdf
        sortdf = cbind(sortdf, temscl)
    }
    # 將匯入存起來 data.frame 的 個直行名稱，前面在塞入序列直行的名稱值
    sortdfcol = c( "nm", dtna)
    # 將處理過的直行名稱塞回去    
    colnames(sortdf) = sortdfcol
    # 處理一開始匯進來所要命名的字串
    sortnm = paste0( chrn,"sortproc")
    # 使用 assign 建立物件，env = .GlobalEnv 則會將其定為全域
    assign( sortnm,
        sortdf
    , env = .GlobalEnv)
}

# 127
DF = as.data.frame(UCBAdmissions)
head(DF)
xtabs(Freq ~ Gender + Admit, DF)
xtabs(Freq ~ ., DF)
summary(xtabs(Freq ~ ., DF))

# 131
(x = rnorm(50))
(x.cut1 = cut( x, breaks = -5:5))
class(x)
class(x.cut1)
Z = stats::rnorm(10000)
head(Z)
tail(Z)
(zt = table(cut(Z, breaks = -6:6)))
class(rpois(100, 5))
k1 = table(rpois(100, 5))
k2 = as.data.frame(table(rpois(100, 5)))
plot(density(k2$Freq))

# 133
# install.pckages("epitools")
# 範例資料
survey = array(0, dim=c(3, 2, 1))
survey[,1,1] = c(2, 0, 1)
survey[,2,1] = c(3, 2, 4)
Satisfactory = c("Good", "Fair", "Bad")
Sex = c("Female", "Male")
Times = c("First")
dimnames(survey) = list(Satisfactory, Sex, Times)
names(dimnames(survey)) = c("Satisfactory", "Sex", "Times")
survey

# 134
# install.packages("epitools")
library("epitools")
(survey.ex = expand.table(survey))
class(survey)
class(survey.ex)

# 138
test.data = data.frame(
        v1 = c( 12, 15, 19, 22, 15),
        v2 = c( 18, 12, 42,29, 44),
        v3 = c( 8, 17, 22, 19, 31))
dim(test.data)
test.data
sktd1 = stack(test.data)
dim(sktd1)
sktd1
sktd2 = stack(test.data, select = c( v2, v3))
dim(sktd2)
sktd2
sktd2$ind == "v1"
usktd = unstack( sktd2, values ~ ind)
dim(usktd)
class(usktd)
usktd

# 142
set.seed(929)
dt = data.table(x1 = rep(letters[1:2], 6), 
                x2 = rep(letters[3:5], 4), 
                x3 = rep(letters[5:8], 3), 
                y = rnorm(12))
(split(dt, by=c("x1", "x2")))
(split(dt, by=c("x1", "x2"), flatten=FALSE))
(df = as.data.frame(dt))
(sdf = split(df, list(df$x1, df$x2)))
n = 10
(edu = factor(sample(1:4, n, replace=T)))
(score = sample( 0:100, n))
usdf = cbind(edu, score)
score.edu = split(score, edu)
score.edu
class(score.edu)
unsplit(score.edu, edu)
sort(edu)
(us.data = unsplit(score.edu, sort(edu)))
class(us.data)

# 148
head(iris)
head(iris[ , 1:4])
colSums (iris[ , 1:4])
rowSums (iris[ , 1:4])
colMeans(iris[ , 1:4])
rowMeans(iris[ , 1:4])
head(iris$Species)
class(iris$Species)
by(iris[,1] , iris$Species , sd)
by(iris[,1] , iris$Species , mode)
by(iris[,1] , iris$Species , sum)
by(iris[,1] , iris$Species , mean)
by(iris[,1:4] , iris$Species , rowSums)
by(iris[,1:4] , iris$Species , colSums)
by(iris[,1:4] , iris$Species , rowMeans)
by(iris[,1:4] , iris$Species , colMeans)

# 152
head(iris)
iris.lm = lm(Sepal.Length ~ Petal.Length, iris)
summary(iris.lm)
with(iris, {
iris.lm = lm(Sepal.Length ~ Petal.Length)
summary(iris.lm)})
head(ToothGrowth)
with(ToothGrowth, {
    boxplot(len ~ dose, boxwex = 0.25, at = 1:3 - 0.2,
            subset = (supp == "VC"), col = "yellow",
            main = "Guinea Pigs' Tooth Growth",
            xlab = "Vitamin C dose mg",
            ylab = "tooth length", ylim = c(0, 35))
    boxplot(len ~ dose, add = TRUE, boxwex = 0.25, at = 1:3 + 0.2,
            subset = supp == "OJ", col = "orange")
    legend(2, 9, c("Ascorbic acid", "Orange juice"),
           fill = c("yellow", "orange"))
})

# 154
rnorm(n = 10)
rnorm(n = 10, mean = 100, sd = 20)

# 155
randNorm10 = rnorm(10)
randNorm10
dnorm(randNorm10)
dnorm(c(-1, 0, 1))

# 156
randNorm = rnorm(30000)
randDensity = dnorm(randNorm)
require(ggplot2)
ggplot(data.frame(x = randNorm, y = randDensity)) + 
aes(x = x, y = y) + geom_point() + labs(x = "Random Normal Variables", y = "Density")

# 157
pnorm(randNorm10)
pnorm(c(-3, 0, 3))
pnorm(-1)

# 158
pnorm(1) - pnorm(0)
pnorm(1) - pnorm(-1)

# 159
p = ggplot(data.frame(x=randNorm, y=randDensity)) + aes(x=x, y=y) + geom_line() + labs(x="x", y="Density")
neg1Seq = seq(from=min(randNorm), to=-1, by=.1)
lessThanNeg1 = data.frame(x=neg1Seq, y=dnorm(neg1Seq))
head(lessThanNeg1)

# 160
neg1To1 = rbind(c(min(neg1To1$x), 0), neg1To1, c(max(neg1To1$x), 0))
p + geom_polygon(data=neg1To1, aes(x=x, y=y))

# 161
randProb = pnorm(randNorm)
ggplot(data.frame(x=randNorm, y=randProb)) + aes(x=x, y=y) + geom_point() + 
labs(x="Random Normal Variables", y="Probability")

# 162
randNorm10
qnorm(pnorm(randNorm10))
all.equal(randNorm10, qnorm(pnorm(randNorm10)))

# 163
rbinom(n = 1, size = 10, prob = 0.4)
rbinom(n = 1, size = 10, prob = 0.4)
rbinom(n = 5, size = 10, prob = 0.4)
rbinom(n = 10, size = 10, prob = 0.4)
rbinom(n = 1, size = 1, prob = 0.4)
rbinom(n = 5, size = 1, prob = 0.4)
rbinom(n = 10, size = 1, prob = 0.4)

# 164
binomData = data.frame(Successes = rbinom(n = 10000, size = 10, prob = 0.3))
ggplot(binomData, aes(x = Successes)) + geom_histogram(binwidth = 1)

# 165
binom5 = data.frame(Successes=rbinom(n=10000, size=5, prob=.3), Size=5)
dim(binom5)
head(binom5)

# 166
binom10 = data.frame(Successes=rbinom(n=10000, size=10, prob=.3), Size=10)
dim(binom10)
head(binom10)
binom100 = data.frame(Successes=rbinom(n=10000, size=100, prob=.3), Size=100)
binom1000 = data.frame(Successes=rbinom(n=10000, size=1000, prob=.3), Size=1000)

# 167
binomAll = rbind(binom5, binom10, binom100, binom1000)
dim(binomAll)
head(binomAll, 10)
tail(binomAll, 10)
ggplot(binomAll, aes(x=Successes)) + geom_histogram() + 
facet_wrap(~ Size, scales="free")

# 169
dbinom(x = 3, size = 10, prob = 0.3)
pbinom(q = 3, size = 10, prob = 0.3)
dbinom(x = 1:10, size = 10, prob = 0.3)
pbinom(q = 1:10, size = 10, prob = 0.3)

# 170
qbinom(p = 0.3, size = 10, prob = 0.3)
qbinom(p = c(0.3, 0.35, 0.4, 0.5, 0.6), size = 10, prob = 0.3)

# 171
pois1 = rpois(n=10000, lambda=1)
pois2 = rpois(n=10000, lambda=2)
pois5 = rpois(n=10000, lambda=5)
pois10 = rpois(n=10000, lambda=10)
pois20 = rpois(n=10000, lambda=20)
pois = data.frame(Lambda.1=pois1, Lambda.2=pois2, Lambda.5=pois5, Lambda.10=pois10, Lambda.20=pois20)

# 172
require(reshape2)
pois = melt(data=pois, variable.name="Lambda", value.name="x")
require(stringr)
pois$Lambda = as.factor(as.numeric(str_extract(string=pois$Lambda, pattern="\\d+")))
head(pois)
tail(pois)

# 173
require(ggplot2)
ggplot(pois, aes(x=x)) + geom_histogram(binwidth=1) + 
facet_wrap(~ Lambda) + ggtitle("Probability Mass Function")

# 174
ggplot(pois, aes(x=x)) + geom_density(aes(group=Lambda, color=Lambda, fill=Lambda), adjust=4, alpha=1/2) + 
scale_color_discrete() + scale_fill_discrete() + ggtitle("Probability Mass Function")

# 175
x = sample(x = 1:100, size = 100, replace = TRUE)
x
mean(x)

# 176
y = x
y[sample(x = 1:100, size = 20, replace = FALSE)] = NA
y
mean(y)
mean(y, na.rm = TRUE)

# 177
grades = c(95, 72, 87, 66)
weights = c(1/2, 1/4, 1/8, 1/8)
mean(grades)
weighted.mean(x = grades, w = weights)

# 178
var(x)
var(x)
sum((x - mean(x))^2)/(length(x) - 1)

# 179
sqrt(var(x))
sd(x)
sd(y)
sd(y, na.rm = TRUE) 

# 180
min(x)
max(x)
median(x)
min(y)
min(y, na.rm = TRUE)
summary(x)
summary(y)
quantile(x, probs = c(0.25, 0.75))
quantile(y, probs = c(0.25, 0.75))
quantile(y, probs = c(0.25, 0.75), na.rm = TRUE)
quantile(x, probs = c(0.1, 0.25, 0.5, 0.75, 0.99))

# 195
# install.packages("clValid")
library("clValid")
data(mouse)
head(mouse)
NROW(mouse)
express = mouse[,c("M1","M2","M3","NC1","NC2","NC3")] 
rownames(express) = mouse$ID 
head(express)
# Internal Validation
intern.it = clValid(express, 2:6, 
    clMethods=c("hierarchical","kmeans","pam"), 
    validation= "internal")
summary(intern.it)
cvpit = par( mfrow = c( 2, 2))
(cvmit = matrix(c( 1, 2, 3, 4), 2, 2))
layout(cvmit)
plot( intern.it, legend = FALSE)
plot(nClusters(intern.it), 
    measures( intern.it, "Dunn")[,,1],
    type = "n", axes = F, xlab = "", ylab = "") 
legend( "center", clusterMethods(intern.it),
col = 1:9, lty = 1:9, pch = paste(1:9))
par(cvpit)
# Stability Validation
intern.sb = clValid(express, 2:6, 
    clMethods=c("hierarchical","kmeans","pam"), 
    validation= "stability")
summary(intern.sb)
cvpsb = par( mfrow = c( 2, 3))
(cvmsb = matrix(c( 1, 2, 3, 4, 5, 5), 2, 3))
layout(cvmsb)
plot( intern.sb, legend = FALSE)
plot(nClusters(intern.sb), 
    measures( intern.sb, "AD")[,,1],
    type = "n", axes = F, xlab = "", ylab = "") 
legend( "center", clusterMethods(intern.sb),
col = 1:9, lty = 1:9, pch = paste(1:9))
par(cvpsb)
intern = clValid(express, 2:6, 
    clMethods=c("hierarchical","kmeans","pam"), 
    validation= c("internal", "stability"))
intern
summary(intern)
cvplot = par( mfrow = c( 3, 3))
(cvmat = matrix(c(1,4,7,2,5,8,3,6,8), 3, 3))
layout(cvmat)
plot( intern.it, legend = FALSE)
plot( intern.sb, legend = FALSE)
plot(nClusters(intern.sb), 
    measures( intern.sb, "AD")[,,1],
    type = "n", axes = F, xlab = "", ylab = "") 
legend( "center", clusterMethods(intern.sb),
col = 1:9, lty = 1:9, pch = paste(1:9))
par(cvplot)

# 199
wine = read.table("http://jaredlander.com/data/wine.csv", header = TRUE, sep = ",")
head(wine)
wineTrain = wine[, which(names(wine) != "Cultivar")]
set.seed(278613)
wineK3 = kmeans(x = wineTrain, centers = 3)
wineK3

# 201
require(useful)
plot(wineK3, data = wineTrain)
plot(wineK3, data = wine, class = "Cultivar")

# 202
set.seed(278613)
wineK3N25 = kmeans(wineTrain, centers = 3, nstart = 25)
wineK3$size
wineK3N25$size

# 205
# HCA
hcad = function( hcdata, hck = 5, hcm = "ward.D", dism = "euclidean", ...){
    hcdif = dist( hcdata, method = dism)
    hctf = hclust( hcdif, method = hcm)
    hctrf = cutree( hctf, k = hck)
    hctrf
}
# HCA PIC
hcadpic = function( hcdata, hck = 5, hcm = "ward.D", dism = "euclidean", ...){
    hcdif = dist( hcdata, method = dism)
    hctf = hclust( hcdif, method = hcm)
    plot(hctf)
    rect.hclust( hctf, k = hck, border = "red")
}

# 206
Irist = iris[,-c(5)]
head(irist)
hcad(irist)
hcad(irist, hck = 6)

# 207
hcadpic(irist)
hcadpic(irist, hck = 6)

# 208
# install.packages("factoextra")
library("factoextra")

# 209
data(multishapes)
head(multishapes)
df = multishapes[, 1:2]
head(df)
set.seed(929)
km.res = kmeans(df, 5, nstart = 25)
fviz_cluster(km.res, df, frame = FALSE, geom = "point")

# 211
install.packages("fpc")
install.packages("dbscan")

# 212
library("fpc")
db = fpc::dbscan(df, eps = 0.15, MinPts = 5)
plot(db, df, main = "DBSCAN", frame = FALSE)

# 213
library("factoextra")
fviz_cluster(db, df, stand = FALSE, frame = FALSE, geom = "point")
print(db)

# 214
NROW(db$cluster)
db$cluster[sample(1:1100, 50)]
dbscan::kNNdistplot(df, k =  5)
abline(h = 0.15, lty = 2)

# 215
data("iris")
head(iris)
iris2 = as.matrix(iris[, 1:4])
head(iris2)

# 216
dbscan::kNNdistplot(iris2, k =  4)
abline(h = 0.4, lty = 2)

# 217
res.fpc = fpc::dbscan(iris2, eps = 0.4, MinPts = 4)
res.db = dbscan::dbscan(iris2, 0.4, 4)
all(res.fpc$cluster == res.db$cluster)
fviz_cluster(res.fpc, iris2, geom = "point")

# 219
install.packages("FactoMineR")
library("FactoMineR")
data(iris)
head(iris)

# 220
# Principal Component Analysis:
res.pca <- PCA(iris[,1:4], graph=FALSE)
summary(res.pca)

# 221
# Clustering, auto nb of clusters:
hc <- HCPC(res.pca, nb.clust=-1)

# 229
require(graphics)

head(warpbreaks,10)
NROW(warpbreaks)

fm1 = aov(breaks ~  tension, data = warpbreaks)
fm1
summary(fm1)
TukeyHSD(fm1, "tension", ordered = TRUE)
plot(TukeyHSD(fm1, "tension"))

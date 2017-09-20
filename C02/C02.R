
# 4
theUrl = "https://raw.githubusercontent.com/kancheng/easyR/master/C02/im_2010.csv"
udf = read.table (file = theUrl, header = TRUE, sep = ",")
head(udf)
dim(udf)

# 5
udf2 = read.table (file = theUrl, sep = ",")
head(udf2)

# 7
x = 10:1
y = -4:5
q = c("Hockey", "Football", "Baseball", 
	"Curling", "Rugby", "Lacrosse", 
	"Basketball", "Tennis", "Cricket", 
	"Soccer")
theDF = data.frame( First = x, 
	Second = y, Sport = q, 
	stringsAsFactors = FALSE)
theDF
theDF$Sport

# 9
# install.packages("Rcmdr")
library("Rcmdr")

# 10
install.packages("xlsx")
require("xlsx")
data = read.xlsx("C:/Path/EFile.xlsx", 1)
data

# 12
# install.packages("RODBC")

# 19
require(RODBC)
sdb = odbcConnect("R_SQLServ")

# 20
ordtable  = sqlQuery(sdb, "SELECT * FROM  dbo.Orders", stringsAsFactors = FALSE)
class(ordtable)
names(ordtable)
head(ordtable,n=3)
table(ordtable$ShipCountry)
mean(ordtable$Freight)
odbcClose(sdb)

# 23
require(RODBC)
sdb = odbcConnect("R_SQLServ")
ordtable = sqlQuery(sdb,
	"SELECT * FROM  dbo.Shippers", 
	stringsAsFactors = FALSE)
ordtable
dim(ordtable)[1]
names(ordtable)
insert.sql = paste("INSERT INTO dbo.Shippers", 
	"(CompanyName, Phone) ", 
	"VALUES", "(", "'WEPA',", "'7654321'", ")")
sqlQuery(sdb, insert.sql)
ordtabletest = sqlQuery(sdb, 
	"SELECT * FROM dbo.Shippers", 
	stringsAsFactors = FALSE)
ordtabletest 
odbcClose(sdb)


# 41
# Sys.getenv('MYSQL_HOME')
# install.packages("RMySQL")

# 43
# R
library(RMySQL)
con = dbConnect(MySQL(), user="root", password="hitachi", dbname="school", host="localhost")
dbListTables(con)
dbListFields(con, "stdscore")
data.all = dbReadTable(con, "stdscore")
class(data.all)
data.all
data.select = dbGetQuery(con, "select * from stdscore where courseno='MS1038'")
data.select
summary(MySQL(), verbose = TRUE)
summary(con, verbose = TRUE)
summary(data.all, verbose = TRUE)
dbListConnections(MySQL())
dbDisconnect(con)

# 48
library("RMySQL")
conn = dbConnect(MySQL(),
	dbname = "rmysql",
	username = "root",
	password = "hitachi")
users = dbGetQuery(conn, 
	"SELECT * FROM t_user")
dbDisconnect(conn)
users

# 49
library(foreign)
# SPSS
spss = read.spss("C:/.../spss_ex.sav", 
	use.value.labels=TRUE, 
	max.value.labels=Inf, 
	to.data.frame=TRUE)
colnames(spss) = tolower(colnames(spss))

# SAS
.Datasets = read.xport("C:/.../sas_ex.xpt")
sas = .Datasets
remove(.Datasets)
# STATA
stata = read.dta("C:/.../stata_ex.dta", 
	convert.dates=TRUE, 
	convert.factors=TRUE, 
	missing.type=TRUE, 
	convert.underscore=TRUE, 
	warn.missing.labels=TRUE)
# Excel
excel <- readXL("C:/.../excel_ex.xls", 
	rownames=FALSE, 
	header=TRUE, na="", 
	sheet="Tomato_First", 
	stringsAsFactors=TRUE)

# 51
require(ggplot2)
data(diamonds)
head(diamonds)
data(iris)
head(iris)

# 53
setwd("C:/....")
getwd()
csvpath = "C:/..../"
csvfilesn = list.files( path = csvpath, pattern="*.csv")
tmprt = function(rtcsv){
read.csv( rtcsv, stringsAsFactors = FALSE)
}
data = lapply(paste(csvpath,csvfilesn, sep = ""), tmprt)
csvfilesn
data = data[[1]]

# 54
a = c(10:1)
b = c(11:20)
c = c(21:30)
test = data.frame( a, b, c)
test
colnames(test) = c("kan", "hao", "cheng")
test
write.table( test, file = "helloWorld.CSV", sep = ",")
getwd()
write.table( test, file= "HW.CSV", 
	quote = FALSE, sep = ",", 
	row.names = FALSE)

# 55
# set a CRAN mirror
#Automatic redirection to servers worldwide, currently sponsored by Rstudio
local({r = getOption("repos")
r["CRAN"] = "https://cloud.r-project.org/"
options(repos=r)})

# install package name
pkgs = c("devtools", "xml2", "plyr", "dplyr", "data.table", "text2vec", "jiebaR", "fmsb", "e1071", "rpart","randomForest", "GGally","lubridate", "stringr", "ggplot2", "scales", "reshape2", "data.table", "coefplot", "Rcmdr", "broom", "xlsx", "shiny")

pkgs = pkgs[!( pkgs %in% installed.packages()[,"Package"] )]

#install
if(length(pkgs)) install.packages(pkgs)

# 56
## 1
wrta = function(xdo , ycsv){
write.table( xdo, file= ycsv, quote = FALSE, sep = ",", row.names = FALSE)
}
setwd("C:/[工作目錄路徑]")
getwd()

## 2
wrta = function(xdo , ycsv, swd = getwd()){
setold = getwd()
setwd(swd)
    dirseh = dir()
    if( length(which(ycsv == dirseh)) > 0){
        sdc = as.character(Sys.time())
        sdc1t = gsub( ":", " ", sdc)
        sdc2t = gsub( "-", " ", sdc1t)
        sdc3t = paste(strsplit( sdc2t ,split = " ", fixed = T)[[1]],collapse="")
        s2pt = strsplit( ycsv ,split=".",fixed=T)
        ycsvhd = paste0( s2pt[[1]][1], "_", sdc3t, ".", s2pt[[1]][2]) 
        write.table( xdo, file= ycsvhd, quote = FALSE, sep = ",", row.names = FALSE)
    }else{
        write.table( xdo, file= ycsv, quote = FALSE, sep = ",", row.names = FALSE)
    }
setwd(setold)
}
sdop = "C:/[工作目錄路徑] "
head( iris, 3)
getwd()
wrta( iris, "haoye13.csv")
wrta( iris, "haoye13.csv")
wrta( iris, "haoye13.csv", sdop)
wrta( iris, "kan13.csv", sdop)

# 58
sc1 = scan()
0 9
2 9

sc1

sc2 = scan(nmax = 1)
0 9 2 9

sc2
sc3 = scan(what = "character", quiet = TRUE)
Hi KanCheng

class(sc3)
NROW(sc3)
sc3

sc4 = scan(what = "character", quiet = TRUE)
"Hi KanCheng"

class(sc4)
NROW(sc4)
sc4

sc5 = scan( what = list(name = "character", 
    age = "numeric", 
    pass = "logical"))
john 24 true
kan 23 false
jun 20 true

class(sc5)
summary(sc5)
sc5

# 59
getwd()
setwd("C:/rws/scan")
getwd()
dir()

sc.data = scan(file = "test.txt", 
    what = list(name = "character", 
    age = "numeric", 
    pass = "logical"))
sc.data
sc.mat = as.data.frame(sc.data)
class(sc.mat)
sc.mat

# 60
head(iris)
summary(iris[1])
summary(iris[2])
summary(lm(iris$Sepal.Length ~ iris$Sepal.Width))

# 61
sink("c:/.../sink.log")
head(iris)
summary(iris[1])
summary(iris[2])
summary(lm(iris$Sepal.Length ~ iris$Sepal.Width))
sink()

sink("c:/.../sink.txt")
head(iris)
summary(iris[1])
summary(iris[2])
summary(lm(iris$Sepal.Length ~ iris$Sepal.Width))
sink()

# 62
data = 1:100
mat = function(obj){
    out = NULL
    for( addnb in 1:length(obj)){
        out[addnb] = obj[addnb] + 1
    }
    out
}

system.time({
mat(data)
})

# 63
# 當前使用的記憶體
# current memory in use
memory.size(max = FALSE)

# 從OS獲得的最大記憶體
# maximum memory obtained from the OS
memory.size(max = TRUE)

# 當前記憶體限制
# current memory limit
memory.size(max = NA)

# 當前記憶體限制
# current memory limit
memory.limit(size = NA)

#增加記憶體限制
# increase memory limit
memory.limit(size = size)

# 65
x = 1:1000000
NROW(x)
head(x)
tail(x)
object.size(x)
head(iris)
object.size(iris)

# 66
# R 版本資訊
R.Version()

version

# R 系統環境資訊
Sys.getenv("R_ARCH")

Sys.getenv()

# 系統資訊
Sys.info()

# 顯示 R 版本、系統與套件等資訊
sessionInfo()

# 系統時間包含日月時分秒
Sys.time()

# 估算 R 物件所占記憶體大小
x = 1:1000000
object.size(x)

# 系統年月日
Sys.Date()

# 系統地區資訊
Sys.getlocale()

# 系統時區
Sys.timezone()

# 67
# install.packages("installr")
library("installr")
installr()

# 68
# install.packages("rJava")
library("rJava")

# 69
# install.packages("ROracle")
library("ROracle ")





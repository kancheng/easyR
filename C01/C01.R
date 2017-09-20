# 3
1 + 2 + 3
3 * 7 * 2
4/2
4/3

# 4
4 * 6 + 5
(4 * 6) + 5
4 * (6 + 5)

# 5
x <- 2
x
y = 5
y

# 6
a <- b <- 7
a

b

# 7
assign ("j", 4)
j

# 8
rm(j)
j

# 9
theVariable <- 17
theVariable 
THEVARIABLE

# 10
x <- 0
class(x)
is.numeric(x)
i <- 5L
i
is.integer(i)
is.numeric(i)

# 11
class(4L)
class(2.8)
4L * 2.8
class(4L * 2.8)
class(5L)
class(2L)
5L/2L
class(5L/2L)

# 12
x <- "data"
x
y <- factor("data")
y
nchar(x)
nchar("hello")
nchar(3)
nchar(452)
nchar(y)

# 13
date1 <- as.Data("2012-06-28")
date1
class(date1)
as.numeric(date1)
date2 <- as.POSIXct("2012-06-28 17:42")
date2
class(date2)
as.numeric(date2)
as.numeric(date1)
class(as.numeric(date1))

# 14
TRUE *5
FALSE *5
k <- TRUE
class(k)
is.logical(k)
TRUE
T
class(T)
T <- 7
T
class(T)

# 15
2 == 3
2 != 3
2 < 3
2 <= 3
2 > 3
2 >= 3
"data" == "stats"
"data" < "stats"

# 16
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x
x * 3
x+2
x-3
x/4
x^2
sqrt(x)

# 17
1:10
10:1
-2:3
5:-7

# 18
x <- 1:10
y <- -5:4
x + y
x - y
x * y
x/y
x^y
length(x)
length(y)
length(x+y) 

# 19
x + c(1, 2)
x + c(1, 2, 3)

# 20
x <= 5
x > y
x < y
x <- 10:1
y <- -4:5
any(x < y)
all(x < y)
q = c("Hockey", "Football", 
	"Baseball", "Curling", 
	"Rugby", "Lacrosse", 
	"Basketball", "Tennis", 
	"Cricket", "Soccer")
nchar(q)
nchar(y)
x[1]
x[1:2]
x[c(1, 4)]

# 21
c(One = "a", Two = "y", Last = "r")
w <- 1:3
names(w) <- c("a", "b", "c")
w

# 22
q <- c("Hockey", "Football", 
	"Baseball", "Curling", 
	"Rugby", "Lacrosse", 
	"Basketball", "Tennis", 
	"Cricket", "Soccer")
q2 <- c(q, "Hockey", "Lacrosse", 
	"Hockey", "Water Polo", 
	"Hockey", "Lacrosse")
q2Factor <- as.factor(q2)
q2Factor
as.numeric(q2Factor)
factor(x=c("High School", "College", 
	"Masters", "Doctorate"), 
	levels=c("High School", 
	"College", "Masters", 
	"Doctorate"), 
	ordered=TRUE)

# 23
x = 10:1
mean(x)

# 24
?'+'
?'*'
?'=='

# 25
apropos("mea")

# 26
z <- c(1, 2, NA, 8, 3, NA, 3)
z
is.na(z)
zChar <- c("Hockey", NA, "Lacrosse")
zChar
is.na(zChar)

# 27
z <- c(1, NULL, 3)
z
d <- NULL
is.null(d)
is.null(7)

# 29
tnm =  9:29
mode(tnm)
tch = as.character(tnm)
mode(tch)
tint = as.integer(tch)
mode(tint)
tlog = tint <= 20
mode(tlog)

tat = matrix( 9: 29, ncol = 3)
tat
attributes(tat)
attr( tat, "dim")
dim(tat)
attributes(tat)$dim
tatvt = c( attributes(tat)$dim, 
    sum(attributes(tat)$dim),
    mean(attributes(tat)$dim),
    sd(attributes(tat)$dim)
)
tatvt

# 30
tatdf = data.frame(matrix( 9:29, ncol = 3))
tatdf
attributes(tatdf)
attr( tatdf, "names")
names(tatdf)

str(tnm)
tletch = letters[6:16]
str(tletch)
str(lynx)
str(iris)
str(attr)
str(mode)

# 31
dir()
ls()
history()

# 32
file.exists ()

# 35
x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", 
	"Baseball", "Curling", 
	"Rugby", "Lacrosse", 
	"Basketball", "Tennis", 
	"Cricket", "Soccer")
theDF <- data.frame(x, y, q)
theDF

# 36
theDF <- data.frame(First = x, Second = y, Sport = q)
theDF

# 37
nrow(theDF)
ncol(theDF)
dim(theDF)

# 38
names(theDF)
names(theDF)[3]
rownames(theDF)
rownames(theDF) <- c("One", "Two", "Three", 
	"Four", "Five", "Six", 
	"Seven", "Eight", "Nine", "Ten")
rownames(theDF)
rownames(theDF) <- NULL
rownames(theDF)

# 39
head(theDF)
head(theDF, n = 7)
tail(theDF)

# 40
class(theDF)
theDF$Sport
theDF[3, 2]

# 41
theDF[, c("First", "Sport")]
theDF[, "Sport"]
class(theDF[, "Sport"])
theDF["Sport"]
class(theDF["Sport"])
theDF[["Sport"]]
class(theDF[["Sport"]])

# 42
theDF[, "Sport", drop = FALSE]
theDF[, "Sport", drop = TRUE]
class(theDF[, "Sport", drop = FALSE])
class(theDF[, "Sport", drop = TRUE])
theDF[, 3, drop = FALSE]
theDF[, 3, drop = TRUE]
class(theDF[, 3, drop = FALSE])
class(theDF[, 3, drop = TRUE])

# 43
newFactor <- factor(c("Pennsylvania", 
	"New York", "New Jersey", 
	"New York", "Tennessee", 
	"Massachusetts", 
	"Pennsylvania", "New York"))

model.matrix(~newFactor - 9)

# 44
list(1, 2, 3)
list(c(1, 2, 3))
(list3 <- list(c(1, 2, 3), 3:7))
list(theDF, 1:10)
list5 <- list(theDF, 1:10, list3)
list5

# 45
list(1, 2, 3)
list(c(1, 2, 3))
(list3 <- list(c(1, 2, 3), 3:7))
list(theDF, 1:10)
list5 <- list(theDF, 1:10, list3)
list5

# 46
names(list5)
names(list5) <- c("data.frame", "vector", "list")
names(list5)
list5

# 47
ist6 <- list(TheDataFrame = theDF, 
	TheVector = 1:10, 
	TheList = list3)
names(list6)
list6

# 48
(emptyList <- vector(mode = "list", length = 4))
list5[[1]]
list5[["data.frame"]]

# 49 & 50
list5[[1]]$Sport
list5[[1]][, "Second"]
list5[[1]][, "Second", drop = FALSE]
length(list5)
list5[[4]] <- 2
length(list5)
list5[["NewElement"]] <- 3:6
length(list5)
names(list5)
list5

# 53
A <- matrix(1:10, nrow = 5)
B <- matrix(21:30, nrow = 5)
C <- matrix(21:40, nrow = 2)
A
B
C
nrow(A)
ncol(A)
dim(A)

# 54
A + B
A * B
A == B
A %*% t(B)

# 55
colnames(A)
rownames(A)
colnames(A) <- c("Left", "Right")
rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th")
colnames(B)
rownames(B)
colnames(B) <- c("First", "Second")
rownames(B) <- c("One", "Two", "Three", "Four", "Five")
colnames(C)
rownames(C)
colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top", "Bottom")
t(A)
A %*% C

# 56
theArray <- array(1:12, dim = c(2, 3, 2))
theArray
theArray[1, , ]
theArray[1, , 1]
theArray[, , 1]

# 58
rep(1:4, 2)
rep(1:4 , 6)

# 59
a = c(11:20)
b = c(91:100)
kan = data.frame( data1 = a, data2 = b )
kan
nrow(kan)
id = rep(1:nrow(kan))
kan = cbind( id, kan)
kan
ikk = rep(10)
ikk
kan = cbind( ikk, kan)
kan

# 60
require(reshape2)
head(tips)
names(tips)
tipc1 = tips[,c( 1, 3, 5)]
head(tipc1)
tipc2 = tips[,-c( 1, 3, 5)]
head(tipc2)
tmtipc3 = which(!names(tips) %in% c( "tip", "size"))
tmtipc3
tipc3 = tips[,tmtipc3]
head(tipc3)

# 61
# install.packages("broom")
library("broom")
require(graphics)
fm = aov(breaks ~ wool + tension, data = warpbreaks)
fm.th = TukeyHSD(fm, "tension", ordered = TRUE)
plot(fm.th)
(fm.thdf =tidy(fm.th))

class(fm.th)
class(fm.thdf)

# 63
tt1.ts = ts(1:10, frequency = 4, start = c(1959, 2))
class(tt1.ts)
print(tt1.ts, calendar = TRUE)
plot(tt1.ts)

# 64
tt2.ts = ts(1:10, frequency = 7, start = c(12, 2))
class(tt2.ts)
print(tt2.ts, calendar = TRUE)
plot(tt2.ts)

# 65
demo.ts = ts(matrix(rnorm(200), 100, 5), 
	start = c(1939, 1), frequency = 12)
head(demo.ts)
NROW(demo.ts)
class(demo.ts)
plot.ts(demo.ts)

# 66
lynx
class(lynx)
summary(lynx)
plot(lynx)

# 67
say.hello = function()
{
   print("Hello, World!")
}
say.hello()

# 68
sprintf("Hello %s", "Jared")
sprintf("Hello %s, today is %s", "Jared", "Sunday")
sprintf("Hello %s, today is %s", "A", "B")

# 69
hello.person = function(name)
{
   print(sprintf("Hello %s", name))
}
hello.person("Jared")
hello.person("Bob")
hello.person("Sarah")

# 70
hello.person = function(first, last)
{
   print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared", "Lander")
hello.person(first = "Jared", last = "Lander")
hello.person(last = "Lander", first = "Jared")
hello.person("Jared", last = "Lander")
hello.person(first = "Jared", "Lander")
hello.person(last = "Lander", "Jared")
hello.person(fir = "Jared", l = "Lander")

# 71
hello.person = function(first, last = "Doe")
{
   print(sprintf("Hello %s %s", first, last))
}
hello.person("Jared")
hello.person("Jared", "Lander")

# 72
hello.person("Jared", extra = "Goodbye")
hello.person("Jared", "Lander", "Goodbye")
hello.person = function(first, last = "Doe", ...)
{
   print(sprintf("Hello %s %s", first, last))
}
hello.person("Jared", extra = "Goodbye")
hello.person("Jared", "Lander", "Goodbye")

# 73

double.num = function(x)
{
   x * 2
}
double.num(5)

double.num = function(x)
{
   return(x * 2)
}
double.num(5)

double.num = function(x)
{
   return(x * 2)

   print("Hello!")
   return(17)
}
double.num(5)

# 74
do.call("hello.person", args = list(first = "Jared", last = "Lander"))
do.call(hello.person, args = list(first = "Jared", last = "Lander"))
run.this = function(x, func = mean)
{
   do.call(func, args = list(x))
}
run.this(1:10)
run.this(1:10, mean)
run.this(1:10, sum)
run.this(1:10, sd)

# 76
as.numeric(TRUE)
as.numeric(FALSE)

# 77
1 == 1 
1 < 1 
1 <= 1 
1 > 1 
1 >= 1 
1 != 1 

toCheck = 1

if (toCheck == 1)
{
   print("hello")
}

if (toCheck == 0)
{
         print("hello")
}

# 78
check.bool = function(x)
{
	if (x == 1) {
		print("hello")
	} else {
		print("goodbye")
 	}
}
check.bool(1)
check.bool(0)
check.bool("k")
check.bool(TRUE)

# 79
check.bool = function(x)
 {
	if (x == 1){
		print("hello")
	} 
	else if (x == 0){        
		print("goodbye")
	}
	else
	{
		print("confused")
	}
}
check.bool(1)
check.bool(0)
check.bool(2)
check.bool("k")

# 80
use.switch = function(x)
{
	switch(x,
		"a"="first",
		"b"="second",
		"z"="last",
		"c"="third",
		"other")
 }

use.switch("a") 
use.switch("b")
use.switch("c")
use.switch("d")
use.switch("e")
use.switch("z")

use.switch(1)
use.switch(2)
use.switch(3)
use.switch(4)
use.switch(5)
use.switch(6)
is.null(use.switch(6))

# 81
toTest[2] = NA
ifelse(toTest == 1, "Yes", "No")
ifelse(toTest == 1, toTest * 3, toTest)
ifelse(toTest == 1, toTest * 3, "Zero")

# 82
a = c(1, 1, 0, 1)
b = c(2, 1, 0, 1)
ifelse(a == 1 & b == 1, "Yes", "No")
ifelse(a == 0 & b == 1, "Yes", "No")
ifelse(a == 1 && b == 1, "Yes", "No")

# 84
for (i in 1:10)
{
	print(i)
}
print(1:10)

# 85
fruit = c("apple", "banana", "pomegranate")
fruitLength = rep(NA, length(fruit))
fruitLength
names(fruitLength) = fruit
fruitLength

for (a in fruit)
{
        fruitLength[a] = nchar(a)
}

fruitLength

# 86
fruitLength2 = nchar(fruit)
names(fruitLength2) = fruit
fruitLength2
identical(fruitLength, fruitLength2)

# 87
x = 1
while (x <= 5)
{
	print(x)
	x = x + 1
}

# 88
for (i in 1:10)
{
        if (i == 3)
        {
                next
        }
        print(i)
}

for (i in 1:10)
{
        if (i == 4)
        {
                break
        }
        print(i)
}

# 89
test = function(x){
a = x*5
print(a)
}

test(2)
test

# 90
TCH = "Hello Function!"
ktestgv = function(k){
    a <<-10:1
    assign("b", 1:10, env = .GlobalEnv)
    print(k)
}
ls()
ktestgv(TCH)
ls()
a
b



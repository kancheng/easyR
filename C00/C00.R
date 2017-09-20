# 36

install.packages("Rcmdr")
library("Rcmdr")


# 37

# install.packages("[指定的套件名稱]")

install.packages("RODBC")

# remove.packages("[套件名稱]")


# 38

setwd("C://")
setwd("C:\")
getwd()


# 44

local({r = getOption("repos")
r["CRAN"] = "https://cloud.r-project.org/"
options(repos=r)})







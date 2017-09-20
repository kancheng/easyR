args = commandArgs(TRUE)

# 取得使用者輸入的 N 值
n = args[1]

# 產生資料
x = rnorm(n, 0, 1)

# 繪製直方圖
png(filename="output/hist.png", width = 500, height = 300)
hist(x, col = "orange")
dev.off()
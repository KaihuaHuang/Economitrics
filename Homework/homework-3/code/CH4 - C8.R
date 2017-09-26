X401ksubs <- read_excel("C:/Users/kaihu/Desktop/Quantitative Finance/Econometrics/Homework/Homework3/Dataset/401ksubs.xls", 
                          +     col_names = c("e401k","inc","marr","male","age","fsize","nettfa","p401k","pira","incsq","agesq"))
View(X401ksubs)
subset_fsize1 <- subset(X401ksubs,fsize == 1)
nrow(subset_fsize1)
reg <- lm(nettfa~inc+age,data = subset_fsize1)
summary(reg)
z <- (0.84266 - 1)/0.09202
pt(abs(z),2014,lower.tail = FALSE)
reg1 <- lm(nettfa~inc,data = subset_fsize1)
summary(reg1)
z1 <- (0.8207 - 0.79932)/0.0609
pt(z,2014)

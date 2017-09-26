hprice1 <- read_excel("C:/Users/kaihu/Desktop/Quantitative Finance/Econometrics/Homework/Homework3/Dataset/hprice1.xls", 
                      +     col_names = c("price","assess","bdrm","lotsize","sqrft","colonial","lprice","lassess","llotsize","lsqrft"))
View(hprice1)
reg <- lm(lprice~sqrft+bdrm,data=hprice1)
summary(reg)
factors <- hprice1$sqrft - 150 * hprice1$bdrm
reg1 <- lm(hprice1$lprice~factors + hprice1$bdrm)
summary(reg1)
confint(reg1)

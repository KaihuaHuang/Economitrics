rdchem <- read_excel("C:/Users/kaihu/Desktop/Quantitative Finance/Econometrics/Homework/Homework2/Dataset/rdchem.xls",
 + col_names = c("rd","sales","profits","rdintens","profmarg","salessq","lsales","lrd"))
View(rdchem)
result <- lm(rdchem$lrd~rdchem$lsales)
result
summary(result)

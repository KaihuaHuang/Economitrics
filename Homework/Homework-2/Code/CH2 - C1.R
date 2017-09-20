colnames(X401k)<-c("prate","mrate","totpart","totelg","age","totemp","sole","ltotemp")
s<-summary(X401k)
s
result<-lm(X401k$prate~X401k$mrate)
result
summary(result)

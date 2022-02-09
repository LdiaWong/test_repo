x = 1
y = 2

animals <- read.csv("favAnimals.csv")
 
dat <- read.csv("./data_raw/iris.csv")
head(dat)
mean(dat$sepal.length)
unique(dat$variety)
tapply(dat$petal.length, dat$variety, mean)

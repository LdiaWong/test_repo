animals <- read.csv("./data_raw/favAnimals.csv")
 
dat <- read.csv("./data_raw/iris.csv")

unique(dat$variety)
tapply(dat$petal.length, dat$variety, mean)

require(reshape2)

datMelt <- melt(dat, id = c("variety"))
datCast <- dcast(datMelt, variety ~ variable, fun.aggregate = mean)

plot(sepal.length ~ sepal.width, data = dat)

dat$flower.number <- c(1:nrow(dat))
head(dat)

                 
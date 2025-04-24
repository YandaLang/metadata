install.packages("meta")
library(meta)

# load dataset
url = "https://raw.githubusercontent.com/YandaLang/metadata/refs/heads/main/dataset01.csv"
dat = read.csv(url)
View(dat)

# fixed and random effect model
mod = metacont(n.e=n_treat,mean.e=mean_treat,sd.e=std_treat,n.c=n_placebo,mean.c=mean_placebo,sd.c=std_placebo,data=dat,studlab=paste(author,year),sm="MD")
summary(mod)

# forest plot
forest(mod)


install.packages("meta")
library(meta)

# load dataset
url = "https://raw.githubusercontent.com/YandaLang/metadata/refs/heads/main/dataset01.csv"
dat = read.csv(url)
View(dat)

# one sample fixed and random effect model
mod1 = metamean(n=n_treat,mean=mean_treat,sd=std_treat,data=dat,studlab=paste(author,year))
summary(mod1)

# forest plot
forest(mod1)

# two sample fixed and random effect model
mod2 = metacont(n.e=n_treat,mean.e=mean_treat,sd.e=std_treat,n.c=n_placebo,mean.c=mean_placebo,sd.c=std_placebo,data=dat,studlab=paste(author,year),sm="MD")
summary(mod2)

# forest plot
forest(mod2)


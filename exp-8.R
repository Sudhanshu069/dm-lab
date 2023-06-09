library(cluster)
library(factoextra)
df<- iris[, 1:4]
df<- na.omit(df)
df<- scale(df)
d<-dist(df, method="euclidean")
hc <- hclust(d, method="complete")
plot(hc,cex = 0.6, hang=-1)
sub_grps<- cutree(hc, k=3)
fviz_cluster(list(data = df, cluster = sub_grps))
plot(hc, cex = 0.6, hang=-1)
rect.hclust(hc,k = 3, border=2:4)
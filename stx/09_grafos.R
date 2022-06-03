# grafos.R

library(qgraph)

dat <- read.csv("dat/dat_3.csv", encoding = "UTF-8", stringsAsFactors = TRUE)

# Se excluye la práctica cuestionable de investigación número 20 (p20) porque
# su frecuencia absoluta y relativa es cero.
dat <- dat[, c(32:50, 52:59)]

gnd <- qgraph(cor(dat), layout = "spring", 
              graph = "glasso", 
              sampleSize = dim(dat)[1],
              tuning = 0.6,
              palette = "colorblind",
              theme = "gray",
              edge.width = 1,
              cut = .01,
              colFactor = 0.0005,
              title = "Grafo no dirigido - no conexo",
              DoNotPlot =T
              )

windows(12, 12) 
pdf("fig/nc.gnd.pdf")
plot(gnd)
dev.off()


dat.c_gnd <- dat[, -which(names(dat) %in% c("p1", "p7", "p14", "p16", "p21", 
                                            "p24", "p25", "p27"))]


c.gnd <- qgraph(cor(dat.c_gnd), layout = "spring", 
              graph = "glasso", 
              sampleSize = dim(dat)[1],
              tuning = 0.8,
              palette = "colorblind",
              theme = "gray",
              edge.width = 1,
              cut = .01,
              colFactor = 0.0005,
              title = "Grafo no dirigido - conexo",
              DoNotPlot =T
)


windows(12, 12)
pdf("fig/c.gnd.pdf")
plot(c.gnd)
dev.off()


library(bnlearn)

dat.c_gnd[,1:19] <- sapply(dat[, 1:19], as.numeric)

 # set.seed(46)
 # full.boot.gda <- boot.strength(dat.c_gnd, R = 1000,algorithm = "gs")
 # save(full.boot.gda, file = "dat/full.boot_gda.RData")

load("dat/full.boot_gda.RData")


pesos.full.gda <- full.boot.gda[full.boot.gda$strength > 0.85 & 
                                  full.boot.gda$direction > 0.5,]
sink("tbl/pesos.full.gda.txt")
print(pesos.full.gda)
sink()

full.gda.avg.n <- averaged.network(full.boot.gda, threshold = 0.85)


f.gda.avg.n <- qgraph(DoNotPlot =T, full.gda.avg.n, title = "Grafo dirigido acíclico - no conexo")
windows(12,12)
pdf("fig/nc.gda.pdf")
plot(f.gda.avg.n)
dev.off()

windows(12,12)
pdf("fig/gp.nc.gda.pdf")
graphviz.plot(full.gda.avg.n, main = "Grafo dirigido acíclico - no conexo")
dev.off()

###
dat.c_gda <- dat.c_gnd[, -which(names(dat.c_gnd) %in% c("p18", "p9", "p22",
                                                        "p26", "p23", "p2",
                                                        "p10", "p28"))]

  # set.seed(46)
  # conect.boot.gda <- boot.strength(dat.c_gda, R = 1000,algorithm = "gs")
  # save(conect.boot.gda, file = "dat/conect.boot_gda.RData")

load("dat/conect.boot_gda.RData")



pesos.connect.gda <- conect.boot.gda[conect.boot.gda$strength > 0.85 & 
                                       conect.boot.gda$direction > 0.5,]

sink("tbl/pesos.conect.gda.txt")
print(pesos.connect.gda)
sink()

conect.avg.n <- averaged.network(conect.boot.gda, threshold = 0.85)

c.gda <- qgraph(DoNotPlot =T, conect.avg.n, title = "Grafo dirigido a cíclico - conexo")

windows(12,12)
pdf("fig/c.gda.pdf")
plot(c.gda)
dev.off()

windows(12,12)
pdf("fig/gp.c.gda.pdf")
graphviz.plot(conect.avg.n, main ="Grafo dirigido acíclico - conexo")
dev.off()

# Medidas de centralidad y conglomeración

ct.gnd <- clusteringTable(c.gnd, standardized = F)
ct.gda <- clusteringTable(qgraph(DoNotPlot =T, skeleton(conect.avg.n)), standardized = F)

centr_conect.gnd <- centrality(c.gnd)
centr_conect.gda <- centrality(c.gda)

cent.t.gnd <- data.frame(inter.gnd = centr_conect.gnd$Betweenness,
                         grado.ponderado.gnd = round(centr_conect.gnd$OutDegree*100, 2),
                         ws.c = round(ct.gnd[1:19,5],2))

cent.t.gda <- data.frame(inter.gda = centr_conect.gda$Betweenness,
                         grado.in = centr_conect.gda$InDegree,
                         grado.out = centr_conect.gda$OutDegree,
                         grado.t = centr_conect.gda$InDegree + centr_conect.gda$OutDegree,
                         ws.c = round(ct.gda[,5],2))

write.csv2(cent.t.gnd, "tbl/cent.t.gnd.csv")
write.csv2(cent.t.gda, "tbl/cent.t.gda.csv")

graphics.off()

windows(12,12)
plot(c.gnd)

windows(12,12)
plot(c.gda)

rm(list = ls())
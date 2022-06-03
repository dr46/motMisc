# Prevalencia de prácticas cuestionables de investigación (pci)

dat <- read.csv("dat/dat.csv", encoding = "UTF-8", stringsAsFactors = TRUE)


# prevalencia

pcis <- names(dat[, 32:59])

## En general

source("stx/04_fc_pv_g.R")

tb.pv.g <- pv.g(pcis)
tb.pv.g <- data.frame(pci=rownames(tb.pv.g), tb.pv.g)


write.table(tb.pv.g, file = "tbl/tb.pv.g.csv", row.names = F, sep = ";")


## En función del área

source("stx/05_fc_pv_area.R")

tb.pv.area <- pv.area(dat, pcis)
tb.pv.area <- data.frame(pci= rownames(tb.pv.area), tb.pv.area)

write.table(tb.pv.area, file = "tbl/tb.pv.area.csv", row.names = F, sep = ";")


# número de pci

dat$pci <- rowSums(dat[, 32:59])

#### Suma de pci

pdf("fig/hist_pci.pdf")

hist(dat$pci, ylim = c(0,700), ylab = "Frecuencia", xlab = "Número de PCIs", axes = F, main = "", col = "green")
axis(1, at=0:15)
axis(2, las = 2)

dev.off()

summary(dat$pci)
sd(dat$pci)

# Por áreas

pdf("fig/box_pci_area.pdf")

boxplot(dat$pci ~ dat$area.r, ylim = c(0, max(dat$pci)) ,axes=F, xlab = "Área de conocimiento", ylab = "PCI", 
        col = rainbow(4))


axis(1, at = 1:4, labels = c("AH", "VM", "NI", "SC")) # "AH": arte y humanidades, "VM": vida médicas, "NI": Naturales e ingeniería, "SC": sociales y del comportamiento
axis(2, las=1)

dev.off()

tapply(dat$pci, dat$area.r, summary)
tapply(dat$pci, dat$area.r, sd)

# Por tipo de universidad

pdf("fig/box_pci_insti.pdf")

boxplot(dat$pci ~ dat$tipouni, axes=F, xlab = "Tipo de institución", ylab = "PCI", 
        col = rainbow(2))


axis(1, at = 1:2, labels = c("Privada", "Pública")) 
axis(2, las=1)

dev.off()

tapply(dat$pci, dat$tipouni, summary)
tapply(dat$pci, dat$tipouni, sd)


# Por perfil

pdf("fig/box_pci_perfil.pdf")

boxplot(dat$pci ~ dat$perfil, axes=F, xlab = "Perfil", ylab = "PCI", 
        col = rainbow(4))


axis(1, at = 1:4, labels = c("ED", "PI", "PD", "PDI"))  # ED: estudiante de doctorado, PI: personal investigador, PD: personal docente, PDI : personal docente e investigador
axis(2, las=1)

dev.off()

tapply(dat$pci, dat$perfil, summary)
tapply(dat$pci, dat$perfil, sd)


# En función de los años de experiencia docente

pdf("fig/pci_edex.pdf")

plot(dat$exed, dat$pci, axes = F, ylab= "PCI", xlab = "Años de experiencia docente")
axis(1, at= seq(from =0, to = 60, by =10))
axis(2, las=1)

m1 <- lm(dat$pci ~ dat$exed)
abline(m1, col = "red")

dev.off()

cor.test(dat$exed, dat$pci)

# En función de los años de experiencia investigadora

pdf("fig/pci_exin.pdf")

plot(dat$exin, dat$pci, axes = F, ylab= "PCI", xlab = "Años de experiencia investigadora")
axis(1, at= seq(from =0, to = 60, by =10))
axis(2, las=1)

m1 <- lm(dat$pci ~ dat$exin)
abline(m1, col = "red")

dev.off()

cor.test(dat$exin, dat$pci)


# En función del número de artículos publicados

pdf("fig/pci_nart.pdf")

plot(dat$nart, dat$pci, axes = F, ylab= "PCI", xlab = "Número de artículos publicados")
axis(1)
axis(2, las=1)

m1 <- lm(dat$pci ~ dat$nart)
abline(m1, col = "red")

dev.off()

cor.test(dat$nart, dat$pci)

# En función del número de artículos en los que se es autor principal

pdf("fig/pci_autprin.pdf")

plot(dat$autprin, dat$pci, axes = F, ylab= "PCI", xlab = "Número de artículos - autor principal")
axis(1)
axis(2, las=1)

m1 <- lm(dat$pci ~ dat$autprin)
abline(m1, col = "red")

dev.off()

cor.test(dat$pci, dat$autprin)


# En función del número de artículos publicados en revistas indexadas en la JCR

pdf("fig/pci_njcr.pdf")

plot(dat$njcr, dat$pci, axes = F, ylab= "PCI", xlab = "Número de artículos - en JCR")
axis(1)
axis(2, las=1)

m1 <- lm(dat$pci ~ dat$njcr)
abline(m1, col = "red")

dev.off()

cor.test(dat$pci, dat$njcr)


library(ltm)

matcor <- rcor.test(dat[,c(91,6:13)], p.adjust = TRUE, p.adjust.method = "holm")
matcor

capture.output(matcor, file = "tbl/matcor.txt")

write.csv(dat, file = "dat/dat_2.csv", row.names = FALSE, fileEncoding = "UTF-8")


rm(list=ls())

# 08_perfil_pci.R

dat <- read.csv("dat/dat_2.csv", encoding = "UTF-8", stringsAsFactors = TRUE)


# Generación de variables pp (perfiles de prácticas o "perfiles de integridad 
# científica")

attach(dat)

dat$pp1[p1 == 1 & mp1 == 1] <- "PC"
dat$pp1[p1 == 0 & mp1 == 1] <- "BP"
dat$pp1[p1 == 0 & mp1 == 0] <- "HD"
dat$pp1[p1 == 1 & mp1 == 0] <- "CD"

dat$pp2[p2 == 1 & mp2 == 1] <- "PC" 
dat$pp2[p2 == 0 & mp2 == 1] <- "BP"
dat$pp2[p2 == 0 & mp2 == 0] <- "HD"
dat$pp2[p2 == 1 & mp2 == 0] <- "CD"

dat$pp3[p3 == 1 & mp3 == 1] <- "PC" 
dat$pp3[p3 == 0 & mp3 == 1] <- "BP"
dat$pp3[p3 == 0 & mp3 == 0] <- "HD"
dat$pp3[p3 == 1 & mp3 == 0] <- "CD"

dat$pp4[p4 == 1 & mp4 == 1] <- "PC" 
dat$pp4[p4 == 0 & mp4 == 1] <- "BP"
dat$pp4[p4 == 0 & mp4 == 0] <- "HD"
dat$pp4[p4 == 1 & mp4 == 0] <- "CD"

dat$pp5[p5 == 1 & mp5 == 1] <- "PC" 
dat$pp5[p5 == 0 & mp5 == 1] <- "BP"
dat$pp5[p5 == 0 & mp5 == 0] <- "HD"
dat$pp5[p5 == 1 & mp5 == 0] <- "CD"

dat$pp6[p6 == 1 & mp6 == 1] <- "PC" 
dat$pp6[p6 == 0 & mp6 == 1] <- "BP"
dat$pp6[p6 == 0 & mp6 == 0] <- "HD"
dat$pp6[p6 == 1 & mp6 == 0] <- "CD"

dat$pp7[p7 == 1 & mp7 == 1] <- "PC" 
dat$pp7[p7 == 0 & mp7 == 1] <- "BP"
dat$pp7[p7 == 0 & mp7 == 0] <- "HD"
dat$pp7[p7 == 1 & mp7 == 0] <- "CD"

dat$pp8[p8 == 1 & mp8 == 1] <- "PC" 
dat$pp8[p8 == 0 & mp8 == 1] <- "BP"
dat$pp8[p8 == 0 & mp8 == 0] <- "HD"
dat$pp8[p8 == 1 & mp8 == 0] <- "CD"

dat$pp9[p9 == 1 & mp9 == 1] <- "PC" 
dat$pp9[p9 == 0 & mp9 == 1] <- "BP"
dat$pp9[p9 == 0 & mp9 == 0] <- "HD"
dat$pp9[p9 == 1 & mp9 == 0] <- "CD"

dat$pp10[p10 == 1 & mp10 == 1] <- "PC" 
dat$pp10[p10 == 0 & mp10 == 1] <- "BP"
dat$pp10[p10 == 0 & mp10 == 0] <- "HD"
dat$pp10[p10 == 1 & mp10 == 0] <- "CD"

dat$pp11[p11 == 1 & mp11 == 1] <- "PC" 
dat$pp11[p11 == 0 & mp11 == 1] <- "BP"
dat$pp11[p11 == 0 & mp11 == 0] <- "HD"
dat$pp11[p11 == 1 & mp11 == 0] <- "CD"

dat$pp12[p12 == 1 & mp12 == 1] <- "PC" 
dat$pp12[p12 == 0 & mp12 == 1] <- "BP"
dat$pp12[p12 == 0 & mp12 == 0] <- "HD"
dat$pp12[p12 == 1 & mp12 == 0] <- "CD"

dat$pp13[p13 == 1 & mp13 == 1] <- "PC" 
dat$pp13[p13 == 0 & mp13 == 1] <- "BP"
dat$pp13[p13 == 0 & mp13 == 0] <- "HD"
dat$pp13[p13 == 1 & mp13 == 0] <- "CD"

dat$pp14[p14 == 1 & mp14 == 1] <- "PC" 
dat$pp14[p14 == 0 & mp14 == 1] <- "BP"
dat$pp14[p14 == 0 & mp14 == 0] <- "HD"
dat$pp14[p14 == 1 & mp14 == 0] <- "CD"

dat$pp15[p15 == 1 & mp15 == 1] <- "PC" 
dat$pp15[p15 == 0 & mp15 == 1] <- "BP"
dat$pp15[p15 == 0 & mp15 == 0] <- "HD"
dat$pp15[p15 == 1 & mp15 == 0] <- "CD"

dat$pp16[p16 == 1 & mp16 == 1] <- "PC" 
dat$pp16[p16 == 0 & mp16 == 1] <- "BP"
dat$pp16[p16 == 0 & mp16 == 0] <- "HD"
dat$pp16[p16 == 1 & mp16 == 0] <- "CD"

dat$pp17[p17 == 1 & mp17 == 1] <- "PC" 
dat$pp17[p17 == 0 & mp17 == 1] <- "BP"
dat$pp17[p17 == 0 & mp17 == 0] <- "HD"
dat$pp17[p17 == 1 & mp17 == 0] <- "CD"

dat$pp18[p18 == 1 & mp18 == 1] <- "PC" 
dat$pp18[p18 == 0 & mp18 == 1] <- "BP"
dat$pp18[p18 == 0 & mp18 == 0] <- "HD"
dat$pp18[p18 == 1 & mp18 == 0] <- "CD"

dat$pp19[p19 == 1 & mp19 == 1] <- "PC" 
dat$pp19[p19 == 0 & mp19 == 1] <- "BP"
dat$pp19[p19 == 0 & mp19 == 0] <- "HD"
dat$pp19[p19 == 1 & mp19 == 0] <- "CD"

dat$pp21[p21 == 1 & mp21 == 1] <- "PC" 
dat$pp21[p21 == 0 & mp21 == 1] <- "BP"
dat$pp21[p21 == 0 & mp21 == 0] <- "HD"
dat$pp21[p21 == 1 & mp21 == 0] <- "CD"

dat$pp22[p22 == 1 & mp22 == 1] <- "PC" 
dat$pp22[p22 == 0 & mp22 == 1] <- "BP"
dat$pp22[p22 == 0 & mp22 == 0] <- "HD"
dat$pp22[p22 == 1 & mp22 == 0] <- "CD"

dat$pp23[p23 == 1 & mp23 == 1] <- "PC" 
dat$pp23[p23 == 0 & mp23 == 1] <- "BP"
dat$pp23[p23 == 0 & mp23 == 0] <- "HD"
dat$pp23[p23 == 1 & mp23 == 0] <- "CD"

dat$pp24[p24 == 1 & mp24 == 1] <- "PC" 
dat$pp24[p24 == 0 & mp24 == 1] <- "BP"
dat$pp24[p24 == 0 & mp24 == 0] <- "HD"
dat$pp24[p24 == 1 & mp24 == 0] <- "CD"

dat$pp25[p25 == 1 & mp25 == 1] <- "PC" 
dat$pp25[p25 == 0 & mp25 == 1] <- "BP"
dat$pp25[p25 == 0 & mp25 == 0] <- "HD"
dat$pp25[p25 == 1 & mp25 == 0] <- "CD"

dat$pp26[p26 == 1 & mp26 == 1] <- "PC" 
dat$pp26[p26 == 0 & mp26 == 1] <- "BP"
dat$pp26[p26 == 0 & mp26 == 0] <- "HD"
dat$pp26[p26 == 1 & mp26 == 0] <- "CD"

dat$pp27[p27 == 1 & mp27 == 1] <- "PC" 
dat$pp27[p27 == 0 & mp27 == 1] <- "BP"
dat$pp27[p27 == 0 & mp27 == 0] <- "HD"
dat$pp27[p27 == 1 & mp27 == 0] <- "CD"

dat$pp28[p28 == 1 & mp28 == 1] <- "PC" 
dat$pp28[p28 == 0 & mp28 == 1] <- "BP"
dat$pp28[p28 == 0 & mp28 == 0] <- "HD"
dat$pp28[p28 == 1 & mp28 == 0] <- "CD"

detach(dat)

write.csv(dat, file = "dat/dat_3.csv", row.names = FALSE, fileEncoding = "UTF-8")

# Distribuciones de frecuencias absolutas y relativas.

fabs <- apply(dat[, -c(1:91)], 2, table)
frel <- apply(dat[, -c(1:91)], 2, function(x){round(prop.table(table(x))*100, 2)})

ppci <- data.frame(pci = names(fabs),
                   bp.f = as.numeric(sapply(fabs, "[", 1)),
                   bp.p = as.numeric(sapply(frel, "[", 1)),
                   cd.f = as.numeric(sapply(fabs, "[", 2)),
                   cd.p = as.numeric(sapply(frel, "[", 2)),
                   hd.f = as.numeric(sapply(fabs, "[", 3)),
                   hd.p = as.numeric(sapply(frel, "[", 3)),
                   pc.f = as.numeric(sapply(fabs, "[", 4)),
                   pc.p = as.numeric(sapply(frel, "[", 4))
                   )

write.csv2(ppci, "tbl/ppci.csv")

library(vcd)

# Relación perfil pci * área

fa_perfil.a <- apply(dat[, -c(1:91)], 2, function(x, y){table(dat$area.r, x)})
aso_perfil.a <- sapply(fa_perfil.a, assocstats, simplify = F)
jis.a <- sapply(aso_perfil.a, "[[", 2) 

# Relación perfil pci * perfil (académico)

fa_perfil.p <- apply(dat[, -c(1:91)], 2, function(x, y){table(dat$perfil, x)})
aso_perfil.p <- sapply(fa_perfil.p, assocstats, simplify = F)
jis.p <- sapply(aso_perfil.p, "[[", 2)


aso.ap <- data.frame(ji.a = round(jis.a[2,], 2),
                     gl.a = jis.a[4,],
                     p.val.a = round(jis.a[6,], 3),
                     cc.a = round(sapply(aso_perfil.a, "[[", 4), 2),
                     v.a = round(sapply(aso_perfil.a, "[[", 5),2),
                     ji.p = round(jis.p[2,], 2),
                     gl.p = jis.p[4,],
                     p.val.p = round(jis.p[6,], 3),
                     cc.p = round(sapply(aso_perfil.p, "[[", 4), 2),
                     v.p = round(sapply(aso_perfil.p, "[[", 5),2)
                     )

write.csv2(aso.ap, "tbl/aso_ap.csv")

sink("tbl/fa_perfil_a.txt")
print(fa_perfil.a)
sink()

sink("tbl/fa_perfil_p.txt")
print(fa_perfil.p)
sink()

sink("tbl/aso_perfil_a.txt")
print(aso_perfil.a)
sink()

sink("tbl/aso_perfil_p.txt")
print(aso_perfil.p)
sink()

save(aso_perfil.a, aso_perfil.p, aso.ap, fa_perfil.a, fa_perfil.p, fabs, frel, ppci, 
     file= "tbl/perfil_pci.RData")

rm(list=ls())

# 06_motpub.R

dat <- read.csv("dat/dat.csv", encoding = "UTF-8", stringsAsFactors = TRUE)

sink(file = "tbl/nh_m.txt", append = F)

# Congruencia resultados e hipótesis y su publicación

# Distribución de frecuencias

table(dat$nh1)
table(dat$nh2)
table(dat$nh3)
table(dat$nh4)
table(dat$nh5)

# Porcentajes de respuesta afirmativa

round(mean(dat$nh1) * 100, 2)
round(mean(dat$nh2) * 100, 2)
round(mean(dat$nh3) * 100, 2)
round(mean(dat$nh4) * 100, 2)
round(mean(dat$nh5) * 100, 2)

# Alternativas potencialmente relacionadas con pci en función del área. (Porcentajes)


round(tapply(dat$nh1, INDEX = dat$area.r, mean)*100, 2)
round(tapply(dat$nh2, INDEX = dat$area.r, mean)*100, 2)
round(tapply(dat$nh3, INDEX = dat$area.r, mean)*100, 2)
round(tapply(dat$nh4, INDEX = dat$area.r, mean)*100, 2)
round(tapply(dat$nh5, INDEX = dat$area.r, mean)*100, 2)

# Alternativas potencialmente relacionadas con pci en función del perfil. (Porcentajes)

round(tapply(dat$nh1, INDEX = dat$perfil, mean)*100, 2)
round(tapply(dat$nh2, INDEX = dat$perfil, mean)*100, 2)
round(tapply(dat$nh3, INDEX = dat$perfil, mean)*100, 2)
round(tapply(dat$nh4, INDEX = dat$perfil, mean)*100, 2)
round(tapply(dat$nh5, INDEX = dat$perfil, mean)*100, 2)


# Necesidad de publicar en caso de que no se satisfagan hipótesis iniciales. 

# Distribución de frecuencias

table(dat$pubnohh)

# Porcentajes

prop.table(table(dat$pubnohh)) *100

# En función del área

tapply(dat$pubnohh, INDEX = dat$area.r, table)

# En función del perfil

tapply(dat$pubnohh, INDEX = dat$perfil, table)


# Motivaciones en general

# Distribución de frecuencias

table(dat$m1)
table(dat$m2)
table(dat$m3)
table(dat$m4)
table(dat$m5)
table(dat$m6)
table(dat$m7)
table(dat$m8)
table(dat$m9)
table(dat$m10)

# Porcentajes de respuesta afirmativa

round(mean(dat$m1)*100, 2)
round(mean(dat$m2)*100, 2)
round(mean(dat$m3)*100, 2)
round(mean(dat$m4)*100, 2)
round(mean(dat$m5)*100, 2)
round(mean(dat$m6)*100, 2)
round(mean(dat$m7)*100, 2)
round(mean(dat$m8)*100, 2)
round(mean(dat$m9)*100, 2)
round(mean(dat$m10)*100, 2)

sink()

rm(list = ls())
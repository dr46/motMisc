# 10_descriptivo.R

dat <- read.csv("dat/dat.csv", encoding = "UTF-8", stringsAsFactors = TRUE)

sink("tbl/descriptivo.txt", append = F)

# Distribución por género
table(dat$sex)

# Porcentajes de género
round(prop.table(table(dat$sex))*100,2)

# Rango de la edad
range(dat$edad)

# Media de la edad
mean(dat$edad)

# Desviación típica de la edad
sd(dat$edad)

# Cuartiles de la edad
quantile(dat$edad)

# Rango intercuartílico de la edad
IQR(dat$edad)

sink()

table(dat$sex)
round(prop.table(table(dat$sex))*100,2)

pais <- sort(table(dat$pais.r))
pais.per <- sort(round(prop.table(table(dat$pais.r))*100,2))
pais.t <- rbind(pais, pais.per)

write.csv2(pais.t, file = "tbl/pais.csv")

windows(12, 12) 
pdf("fig/pais.pdf")
par(mai=c(1,2,1,1))
barplot(pais, horiz = T, las= 1, col = rainbow(20), xlim =c(0,300))
dev.off()

sink("tbl/descriptivo.txt", append = T)

# Distribución de frecuencias absolutas por tipo de universidad
table(dat$tipouni)

# Distribución de frecuencias relativas (porcentajes) por tipo de universidad
round(prop.table(table(dat$tipouni))*100, 2)

# Distribución de frecuencias absolutas por perfil laboral
table(dat$perfil)

# Distribución de frecuencias relativas (porcentaje) por perfil laboral
round(prop.table(table(dat$perfil))*100, 2)

# Rango de los años de experiencia docente universitaria
range(dat$exed)

# Media de los años de experiencia docente universitaria
mean(dat$exed)

# Desviación típica de los años de experiencia docente universitaria
sd(dat$exed)

# Cuartiles de los años de experiencia docente universitaria
quantile(dat$exed)

# Rango intercuartílico de los años de experiencia docente universitaria
IQR(dat$exed)

# Distribución de frecuencias absolutas para la variable "acreditación de experiencia docente" (0: no, 1: sí)
table(dat$acreedu)

# Distribución de frecuencias relativa para la variable "acreditación de experiencia docente" (0: no, 1: sí)
round(prop.table(table(dat$acreedu))*100,2)

# Rango de los años de experiencia investigadora
range(dat$exin)

# Media de los años de experiencia investigadora
mean(dat$exin)

# Desviación típica de los años de experiencia investigadora
sd(dat$exin)

# Cuartiles de los años de experiencia investigadora
quantile(dat$exin)

# Rango intercuartílico de los años de experiencia investigadora
IQR(dat$exin)

# Distribución de frecuencias absolutas para la acreditación de la actividad investigadora (0: no, 1: sí)
table(dat$acreinv)

# Distribución de frecuencias relativas (porcentajes) para la acreditación de la actividad investigadora (0: no, 1: sí)
round(prop.table(table(dat$acreinv))*100,2)

# Distribución de frecuencias absolutas para la pertenencia a grupo de investigación (0: no, 1: sí)
table(dat$grupoinv)

# Distribución de frecuencias relativas (porcentajes) para la pertenencia a grupo de investigación (0: no, 1: sí)
round(prop.table(table(dat$grupoinv))*100,2)

# Rango del número de artículos en que se aparece en primera posición
range(dat$autprin)

# Media del número de artículos en que se aparece en primera posición
mean(dat$autprin)

# Desviación del número de artículos en que se aparece en primera posición
sd(dat$autprin)

# Cuartiles del número de artículos en que se aparece en primera posición
quantile(dat$autprin)

# Rango intercuartílico del número de artículos en que se aparece en primera posición
IQR(dat$autprin)

# Rango del número de artículos publicados en la base de datos JCR
range(dat$njcr)

# Media del número de artículos publicados en la base de datos JCR
mean(dat$njcr)

# Desviación típica del número de artículos publicados en la base de datos JCR
sd(dat$njcr)

# Cuartiles del número de artículos publicados en la base de datos JCR
quantile(dat$njcr)

# Rango intercuartílico del número de artículos publicados en la base de datos JCR
IQR(dat$njcr)


sink()


rm(list = ls())



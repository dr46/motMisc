# Recodificación de variables

imp <- read.csv("dat/imp.csv")

imp$sex <- factor(imp$sex, levels = c(0,1,99), labels = c("Mujer", "Hombre", "Prefiero no decirlo"))

attach(imp)
imp$pais.r[pais == "A4"] <- "Otro"
imp$pais.r[pais == "A8"] <- "Otro"
imp$pais.r[pais == "A10"] <- "Argentina"
imp$pais.r[pais == "A20"] <- "Otro"
imp$pais.r[pais == "A24"] <- "Bolivia"
imp$pais.r[pais == "A27"] <- "Otro"
imp$pais.r[pais == "A34"] <- "Otro"
imp$pais.r[pais == "A36"] <- "Chile"
imp$pais.r[pais == "A39"] <- "Colombia"
imp$pais.r[pais == "A42"] <- "Costa Rica"
imp$pais.r[pais == "A45"] <- "Cuba"
imp$pais.r[pais == "A50"] <- "Ecuador"
imp$pais.r[pais == "A52"] <- "El Salvador"
imp$pais.r[pais == "A53"] <- "Otro"
imp$pais.r[pais == "A57"] <- "España"
imp$pais.r[pais == "A58"] <- "Otro"
imp$pais.r[pais == "A59"] <- "Otro"
imp$pais.r[pais == "A67"] <- "Otro"
imp$pais.r[pais == "A73"] <- "Guatemala"
imp$pais.r[pais == "A79"] <- "Honduras"
imp$pais.r[pais == "A81"] <- "Otro"
imp$pais.r[pais == "A90"] <- "Otro"
imp$pais.r[pais == "A92"] <- "Otro"
imp$pais.r[pais == "A106"] <- "Otro"
imp$pais.r[pais == "A117"] <- "México"
imp$pais.r[pais == "A133"] <- "Otro"
imp$pais.r[pais == "A136"] <- "Panamá"
imp$pais.r[pais == "A138"] <- "Paraguay"
imp$pais.r[pais == "A139"] <- "Perú"
imp$pais.r[pais == "A140"] <- "Otro"
imp$pais.r[pais == "A194"] <- "Puerto Rico"
imp$pais.r[pais == "A146"] <- "Otro"
imp$pais.r[pais == "A151"] <- "República Dominicana"
imp$pais.r[pais == "A172"] <- "Otro"
imp$pais.r[pais == "A173"] <- "Otro"
imp$pais.r[pais == "A186"] <- "Uruguay"
imp$pais.r[pais == "A189"] <- "Venezuela"
detach(imp)

imp$tipouni <- factor(imp$tipouni, levels = c("A1", "A2"), labels = c("Pública", "Privada"))

imp$perfil <- factor(imp$perfil, levels = c("A1", "A2", "A3", "A4"), 
                     labels = c("Personal docente",
                                "Personal de investigación",
                                "Personal docente e investigador",
                                "Estudiante de doctorado"))

attach(imp)
imp$area.r[area == "A2"] <- 4
imp$area.r[area == "A3"] <- 1
imp$area.r[area == "A4"] <- 3
imp$area.r[area == "A5"] <- 3
imp$area.r[area == "A6"] <- 3
imp$area.r[area == "A7"] <- 2
imp$area.r[area == "A8"] <- 3
imp$area.r[area == "A9"] <- 3
imp$area.r[area == "A10"] <- 2
imp$area.r[area == "A11"] <- 2
imp$area.r[area == "A12"] <- 3
imp$area.r[area == "A13"] <- 1
imp$area.r[area == "A14"] <- 1
imp$area.r[area == "A15"] <- 3
imp$area.r[area == "A16"] <- 3
imp$area.r[area == "A17"] <- 3
imp$area.r[area == "A18"] <- 1
imp$area.r[area == "A19"] <- 3
imp$area.r[area == "A20"] <- 1
imp$area.r[area == "A21"] <- 2
imp$area.r[area == "A22"] <- 1
imp$area.r[area == "A23"] <- 1
imp$area.r[area == "A24"] <- 1
imp$area.r[area == "A25"] <- 2
imp$area.r[area == "A26"] <- 3
imp$area.r[area == "A27"] <- 1
detach(imp)

imp$area.r <- factor(imp$area.r, levels = c(1, 2, 3, 4),
                     labels = c("Ciencias de la vida y médicas", 
                                "Ciencias sociales y del comportamiento",
                                "Ciencias naturales e ingeniería",
                                "Arte y humanidades"))

imp$acreedu <- ifelse(imp$acreedu == 1, 1, 0)
imp$acreinv <- ifelse(imp$acreinv == 1, 1, 0)
imp$grupoinv <- ifelse(imp$grupoinv == 1, 1, 0)
imp$nh1 <- ifelse(imp$nh1 == 1, 1, 0)
imp$nh2 <- ifelse(imp$nh2 == 1, 1, 0)
imp$nh3 <- ifelse(imp$nh3 == 1, 1, 0)
imp$nh4 <- ifelse(imp$nh4 == 1, 1, 0)
imp$nh5 <- ifelse(imp$nh5 == 1, 1, 0)
imp$m1 <- ifelse(imp$m1 == 1, 1, 0)
imp$m2 <- ifelse(imp$m2 == 1, 1, 0)
imp$m3 <- ifelse(imp$m3 == 1, 1, 0)
imp$m4 <- ifelse(imp$m4 == 1, 1, 0)
imp$m5 <- ifelse(imp$m5 == 1, 1, 0)
imp$m6 <- ifelse(imp$m6 == 1, 1, 0)
imp$m7 <- ifelse(imp$m7 == 1, 1, 0)
imp$m8 <- ifelse(imp$m8 == 1, 1, 0)
imp$m9 <- ifelse(imp$m9 == 1, 1, 0)
imp$m10 <- ifelse(imp$m10 == 1, 1, 0)


imp$pubnohh <- factor(imp$pubnohh, levels = c("A1", "A2", "A3"), labels = c("Sí", "No", "No lo tengo claro"))

imp$priorpub <- factor(imp$priorpub, levels = c("A1", "A2", "A3", "A4", "A5"),
                       labels = c("Difundir",
                                  "Resolver",
                                  "Descubrir",
                                  "Requisitos",
                                  "Reputación"))

imp$util <- factor(imp$util, levels = c("A1", "A2"), labels = c("Aplicabilidad", "Conocimiento"))

imp$p1 <- ifelse(imp$p1 == 1, 1, 0)
imp$p2 <- ifelse(imp$p2 == 1, 1, 0)
imp$p3 <- ifelse(imp$p3 == 1, 1, 0)
imp$p4 <- ifelse(imp$p4 == 1, 1, 0)
imp$p5 <- ifelse(imp$p5 == 1, 1, 0)
imp$p6 <- ifelse(imp$p6 == 1, 1, 0)
imp$p7 <- ifelse(imp$p7 == 1, 1, 0)
imp$p8 <- ifelse(imp$p8 == 1, 1, 0)
imp$p9 <- ifelse(imp$p9 == 1, 1, 0)
imp$p10 <- ifelse(imp$p10 == 1, 1, 0)
imp$p11 <- ifelse(imp$p11 == 1, 1, 0)
imp$p12 <- ifelse(imp$p12 == 1, 1, 0)
imp$p13 <- ifelse(imp$p13 == 1, 1, 0)
imp$p14 <- ifelse(imp$p14 == 1, 1, 0)
imp$p15 <- ifelse(imp$p15 == 1, 1, 0)
imp$p16 <- ifelse(imp$p16 == 1, 1, 0)
imp$p17 <- ifelse(imp$p17 == 1, 1, 0)
imp$p18 <- ifelse(imp$p18 == 1, 1, 0)
imp$p19 <- ifelse(imp$p19 == 1, 1, 0)
imp$p20 <- ifelse(imp$p20 == 1, 1, 0)
imp$p21 <- ifelse(imp$p21 == 1, 1, 0)
imp$p22 <- ifelse(imp$p22 == 1, 1, 0)
imp$p23 <- ifelse(imp$p23 == 1, 1, 0)
imp$p24 <- ifelse(imp$p24 == 1, 1, 0)
imp$p25 <- ifelse(imp$p25 == 1, 1, 0)
imp$p26 <- ifelse(imp$p26 == 1, 1, 0)
imp$p27 <- ifelse(imp$p27 == 1, 1, 0)
imp$p28 <- ifelse(imp$p28 == 1, 1, 0)

imp$mp1 <- ifelse(imp$mp1 == 1, 1, 0)
imp$mp2 <- ifelse(imp$mp2 == 1, 1, 0)
imp$mp3 <- ifelse(imp$mp3 == 1, 1, 0)
imp$mp4 <- ifelse(imp$mp4 == 1, 1, 0)
imp$mp5 <- ifelse(imp$mp5 == 1, 1, 0)
imp$mp6 <- ifelse(imp$mp6 == 1, 1, 0)
imp$mp7 <- ifelse(imp$mp7 == 1, 1, 0)
imp$mp8 <- ifelse(imp$mp8 == 1, 1, 0)
imp$mp9 <- ifelse(imp$mp9 == 1, 1, 0)
imp$mp10 <- ifelse(imp$mp10 == 1, 1, 0)
imp$mp11 <- ifelse(imp$mp11 == 1, 1, 0)
imp$mp12 <- ifelse(imp$mp12 == 1, 1, 0)
imp$mp13 <- ifelse(imp$mp13 == 1, 1, 0)
imp$mp14 <- ifelse(imp$mp14 == 1, 1, 0)
imp$mp15 <- ifelse(imp$mp15 == 1, 1, 0)
imp$mp16 <- ifelse(imp$mp16 == 1, 1, 0)
imp$mp17 <- ifelse(imp$mp17 == 1, 1, 0)
imp$mp18 <- ifelse(imp$mp18 == 1, 1, 0)
imp$mp19 <- ifelse(imp$mp19 == 1, 1, 0)
imp$mp20 <- ifelse(imp$mp20 == 1, 1, 0)
imp$mp21 <- ifelse(imp$mp21 == 1, 1, 0)
imp$mp22 <- ifelse(imp$mp22 == 1, 1, 0)
imp$mp23 <- ifelse(imp$mp23 == 1, 1, 0)
imp$mp24 <- ifelse(imp$mp24 == 1, 1, 0)
imp$mp25 <- ifelse(imp$mp25 == 1, 1, 0)
imp$mp26 <- ifelse(imp$mp26 == 1, 1, 0)
imp$mp27 <- ifelse(imp$mp27 == 1, 1, 0)
imp$mp28 <- ifelse(imp$mp28 == 1, 1, 0)


dat <- imp[,c(1:3,5:7,9:92)]

write.csv(dat, file = "dat/dat.csv", row.names = FALSE, fileEncoding = "UTF-8")

rm(list = ls())

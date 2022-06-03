# Importación de datos

imp <- read.csv("dat/exp.csv", encoding = "UTF-8")

imp <- imp[,c(1,8:96)]

#renaming variables

names(imp) <- c("id", "edad", "sex", "pais", "tipouni", "perfil", 
                "exed", "area", "acreedu", "exin", "acreinv", "grupoinv", "nart", 
                "autprin", "njcr", "nh1", "nh2", "nh5", 
                "nh3", "nh4", "pubnohh", "m1", 
                "m2", "m3", "m4", "m5", "m6", 
                "m7", "m8", "m9", "m10", "priorpub", 
                "util", "p1", "p2", "p3", "p4", 
                "p5", "p6", "p7", "p8", 
                "p9", "p10", "p11", "p12", 
                "p13", "p14", "p15", "p16", 
                "p17", "p18", "p19", "p20", 
                "p21", "p22", "p23", "p24", 
                "p25", "p26", "p27", "p28", 
                "mp1", "mp2", "mp3", "mp4", 
                "mp5", "mp6", "mp7", "mp8", 
                "mp9", "mp10", "mp11", "mp12", 
                "mp13", "mp14", "mp15", "mp16", 
                "mp17", "mp18", "mp19", "mp20", 
                "mp21", "mp22", "mp23", "mp24", 
                "mp25", "mp26", "mp27", "mp28", 
                "otro")

write.csv(imp, "dat/imp.csv", row.names = F)
rm(imp)

# Motivaciones - participación en PCIs

dat <- read.csv("dat/dat_2.csv", encoding = "UTF-8", stringsAsFactors = TRUE)

library(ltm)

# La pci con código p20 se excluye porque su proporción de respuestas positivas es igual a cero.

dat <- dat[,c(20:29, 32:50, 52:59)]


# Motivación 1
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                             1], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  1, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m1 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m1, "tbl/m1.csv")



# Motivación 2
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              2], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  2, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m2 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m2, "tbl/m2.csv")


# Motivación 3
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              3], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  3, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m3 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m3, "tbl/m3.csv")


# Motivación 4
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              4], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  4, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m4 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m4, "tbl/m4.csv")

# Motivación 5
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              5], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  5, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m5 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m5, "tbl/m5.csv")

# Motivación 6
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              6], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  6, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m6 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m6, "tbl/m6.csv")

# Motivación 7
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              7], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  7, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m7 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m7, "tbl/m7.csv")

# Motivación 8
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              8], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  8, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m8 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m8, "tbl/m8.csv")

# Motivación 9
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              9], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  9, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m9 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m9, "tbl/m9.csv")

# Motivación 10
corrl <-  apply(dat[, -c(1:10)], 2, function(x) {cor.test(dat[, 
                                                              10], x)})
corre <- sapply(corrl, "[[", "estimate")
x <- sapply(corrl, "[[", 9)

mat1 <- rcor.test(dat[, c(
  10, 11:37)], p.adjust = T, p.adjust.method = "holm")

p.val <- mat1$p.values[1:27,3]

m10 <- data.frame(r = round(corre, 2), t(round(x, 2)), p.val = round(p.val, 4))

write.csv2(m10, "tbl/m10.csv")


save(m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, file= "tbl/ms.RData")

rm(list =ls())
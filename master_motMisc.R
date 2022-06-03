# Master file - 11/02/2022

# Limpieza del archivo bruto
source("stx/01_clean.R")
# imp <- read.csv("dat/imp.csv")

# Recodificación de variables
source("stx/02_recode.R", encoding = "UTF-8")
# dat <- read.csv("dat/dat.csv", encoding = "UTF-8", stringsAsFactors = TRUE)

# Calcula tablas de prevalencia de cada pci así como la relación que se 
# establece entre el número total de pci y otras variables relevantes del 
# estudio. Genera la matriz de correlaciones matcor.txt que estudia la relación
# que se establece entre el número total de prácticas cuestionables de 
# investigación y otras variables cuantitativas del estudio. También genera 
# gráficos de dispersión y de caja que se almacenan en la carpeta fig.
source("stx/03_prev.R", encoding = "UTF-8")

# 04_fc_pv_g.R y 05_fc_pv_area.R son funciones que se invocan en otros archivos.

# Este archivo analiza la distribución de frecuencias, absolutas y relativas, 
# de las variables que valoran si deben publicarse los trabajos científicos en 
# caso de que las hipótesis iniciales de la investigación no se hayan 
# corroborado. También analiza las motivaciones para publicar univariadamente.
# Produce el archivo nh_m.txt con estos análisis y lo guarda en la carpeta tbl.
source("stx/06_motpub.R", encoding = "UTF-8", echo = T)

# Este archivo produce tablas en las que se presentan las correlaciones (así 
# como sus intervalos de confianza al 95% y el p-valor correspondiente corregido
# con el método de Holm) que se establecen entre cada motivación
# y todas las prácticas cuestionables de investigación excluyendo la p20.
source("stx/07_mot_pci.R")
# load("tbl/ms.RData")

# Este archivo estudia la relación que se establece entre las prácticas 
# cuestionables de investigación (pci) teniendo en cuenta si son, o no, 
# consideradas como indeseables por los participantes. En función de ello 
# se generan cuatro perfiles diferentes de participantes y se realizan los 
# análisis correspondientes. El archivo genera varias tablas (aso_ap.csv, 
# ppci.csv), documentos de texto (aso_perfil_a.txt, aso_perfil_p.txt,
# fa_perfil_a.txt, fa_perfil_p) y un conjunto de objetos de R (perfil_pci.RData)
# que resumen los análisis realizados. Todos los archivos se almacenan en la 
# carpeta tbl. Este archivo también produce un archivo de datos intermedio 
# (dat_3.csv) que se almacena en la carpeta dat.
source("stx/08_perfil_pci.R")
# load("tbl/perfil_pci.RData")

# Este archivo realiza una serie de análisis destinados a estimar un modelo 
# gráfico no dirigido y un modelo gráfico dirigido que describa las relaciones
# que se establecen entre las prácticas cuestionables de investigación tratadas
# en la investigación. El archivo produce una serie de grafos, tablas y datos
# intermedios que son almacenados convenientemente en las carpetas dat, fig y
# tbl. Se recomienda consultar la sección correspondiente del archivo README.pdf 
# para hacerse una idea más clara del comportamiento de este archivo.
source("stx/09_grafos.R", encoding = "UTF-8")

# función pv.area()

# Estima la prevalencia de las pci en función del área de conocimiento. Toma como argumentos
# un una base de datos (datos) y un vector de pci (variables). Produce la tabla correspondiente.

pv.area <- function(datos, variables){
  mat <- matrix(ncol = 12, nrow = length(variables))
  
  for (i in seq_along(variables)) {
    latab <- eval(parse(text = paste("tapply(datos$p", i, ", datos$area.r, table)", sep = "")))
    hits <-  eval(parse(text = paste("tapply(datos$p", i, ", datos$area.r, sum)", sep = "")))
    enes <- sapply(latab, sum)
    
    p.test.ah <- prop.test(x = hits[1], enes[1])
    p.ah <- p.test.ah$estimate
    ll.ah <- p.test.ah$conf.int[1]
    ul.ah <- p.test.ah$conf.int[2]
    
    p.test.vm <- prop.test(x = hits[2], enes[2])
    p.vm <- p.test.vm$estimate
    ll.vm <- p.test.vm$conf.int[1]
    ul.vm <- p.test.vm$conf.int[2]
    
    p.test.ni <- prop.test(x = hits[3], enes[3])
    p.ni <- p.test.ni$estimate
    ll.ni <- p.test.ni$conf.int[1]
    ul.ni <- p.test.ni$conf.int[2]
    
    p.test.sc <- prop.test(x = hits[4], enes[4])
    p.sc <- p.test.sc$estimate
    ll.sc <- p.test.sc$conf.int[1]
    ul.sc <- p.test.sc$conf.int[2]
    
    
    mat[i, ] <- c(p.ah, ll.ah, ul.ah, p.vm, ll.vm, ul.vm, p.ni, ll.ni, ul.ni, p.sc, ll.sc, ul.sc)
    
  }
  
  colnames(mat) <- c("p.ah", "ll.ah", "ul.ah", "p.vm", "ll.vm", 
                     "ul.vm", "p.ni", "ll.ni", "ul.ni", "p.sc", "ll.sc", "ul.sc")
  rownames(mat) <- variables
  
  mat <- mat*100
  mat <- round(mat, 2)
  
  return(mat)
  
}

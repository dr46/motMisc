# función pv.g()

# computa la prevalencia y su intevalo de confianza para un conjunto (x) de prácticas cuestionalbles de
# investigación (pci)


pv.g <- function(x){
  
  mat <- matrix(ncol = 3, nrow = length(x))
  
  for(i in seq_along(x)){
    hit <-  eval(parse(text = paste("sum(dat$p", i, ")", sep = "")))
    n <-  eval(parse(text = paste("sum(table(dat$p", i, "))", sep = "")))
    
    p.test <- prop.test(x = hit, n= n)
    
    pv <- p.test$estimate
    ll.ci <- p.test$conf.int[1]
    ul.ci <- p.test$conf.int[2]
    
    mat[i, ] <- c(pv, ll.ci, ul.ci)
    
  }
  
  mat <- mat*100
  mat <- round(mat, 2)
  
  colnames(mat) <- c("Prevalencia", "IC95%_inf", "IC95%_sup")
  rownames(mat) <- x
  
  return(mat)
}
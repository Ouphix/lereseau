devtools::install_github("tutuchan/fodr")
library("fodr")

#List of the portals
list_portals()

# call the name of the portal in minuscule
portal <- fodr_portal("rte")
portal

list_datasets <-  portal$search(q = "production")
list_datasets[[1]]

dts <- list_datasets[[1]]
dts <- as.data.frame(dts$get_records())

data <- dts[order(dts$annee),]
data
barplot(as.matrix(data[,2:3]), beside=TRUE, main="Production d'Electricité par Eolien et
        Solaire en fonction des années", xlab='annee')

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
dts$get_records()

#this file to detecade the network module file
#This is the variable that exist though variables file in network module
module "network"{
    source = "./network"
    vpc_cider = var.vpc_cider
    PRI-SN1-cider = var.PRI-SN1-cider
    PRI-SN2-cider = var.PRI-SN2-cider
    PUB-SN1-cider = var.PUB-SN1-cider
    PUB-SN2-cider = var.PUB-SN2-cider
    
}
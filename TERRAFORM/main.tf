terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }                                                                  
}
module "multiple_vms" {
    source = "./modules/azure_network_module"
    res_grp_location = var.res_grp_location
    res_grp_name = var.res_grp_name
    vnet_name=var.vnet_name
    vnet_space=var.vnet_space



  
}
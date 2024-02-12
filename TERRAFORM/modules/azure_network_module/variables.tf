variable "subnetname" {
  type = map(object({
    subnet_name=string
    vmname=string
    address_prefixes=list(string)

  }))
  default = { 
    "subnet1"={
  subnet_name="subnet1"
  vmname="myvm1"
  address_prefixes=["10.0.1.0/24"]
  }
   "subnet2"={
  subnet_name="subnet2"
  vmname="myvm2"
  address_prefixes=["10.0.2.0/24"]
  }
   "subnet3"={
  subnet_name="subnet3"
  vmname="myvm3"
  address_prefixes=["10.0.3.0/24"]
  }
  }
  
}

variable "res_grp_name" {
    type = string
    description = "value of res_grp_name"
    default = "app2"
  
}
variable "res_grp_location" {
    type = string
    description = "value of res_grp_location"
    default = "eastus"
  
}
variable "vnet_name" {
    type = string
    description = "value of vnet_name"
    default = "virtualNetwork1"
  
}
variable "vnet_space" {
    type = list(string)
    description = "value of vnet_space"
    default = ["10.0.0.0/16"]
  
}

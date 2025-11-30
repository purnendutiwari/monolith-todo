module "RG" {
  source   = "../../modules/azurerm_resource_group"
  rgs      = var.rgs
  location = var.location
}

module "vnet" {
  source     = "../../modules/azurerm_vnet"
  depends_on = [module.RG]
  vnets      = var.vnets
  location   = var.location
}

module "subnet" {
  source     = "../../modules/azurerm_subnet"
  depends_on = [module.vnet]
  subnets    = var.subnets
}


module "linux_vm" {
  source     = "../../modules/azurerm_compute"
  depends_on = [module.nic]
  vms        = var.vms
  location   = var.location

}

module "pips" {
  depends_on = [module.RG]
  source     = "../../modules/azurerm_pip"
  pips       = var.pips
  location   = var.location
}

module "nic" {
  source     = "../../modules/azurerm_nic"
  depends_on = [module.subnet, module.pips]
  nics       = var.nics
  location   = var.location
}


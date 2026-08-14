module "rgs" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.resource_groups

}

module "vnet" {
  source = "../child_module/azurerm_virtual_network"
  vnet   = var.virtual_network
}

module "snet" {
  source = "../child_module/azurerm_subnet"
  snet   = var.subnet
}
module "nsg" {
  source = "../child_module/azurerm_nsg"
  nsg    = var.network_security_group
}
module "nic" {
  source = "../child_module/azurerm_nic"
  nic    = var.network_interface
}
module "bastion" {
  source  = "../child_module/azurerm_bastion"
  bastion = var.bastion
}
module "vms" {
  source = "../child_module/azurerm_virtual_machine"
  vms    = var.virtual_machine
}
module "kv" {
  source = "../child_module/key_vault"
  kv     = var.key_vault
}

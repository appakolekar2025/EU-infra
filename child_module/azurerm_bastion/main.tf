data "azurerm_subnet" "bastionsubnet" {
  for_each = var.bastion
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

resource "azurerm_public_ip" "baspip" {
  for_each = var.bastion
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Dynamic"
  
}

resource "azurerm_bastion_host" "bastion"{
    for_each = var.bastion
    name                = each.value.name
    resource_group_name = each.value.resource_group_name
    location            = each.value.location
    
    ip_configuration {
        name                 = "internal"
        subnet_id            = data.azurerm_subnet.bastionsubnet[each.key].id
        public_ip_address_id = azurerm_public_ip.baspip[each.key].id
    }
}
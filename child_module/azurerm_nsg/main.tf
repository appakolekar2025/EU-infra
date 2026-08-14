resource "azurerm_network_security_group" "nsg" {
  for_each = var.nsg
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
}

resource "azurerm_network_security_rule" "aalow-rdp" {
    for_each = var.nsg
    name                        = "Allow-RDP"
    priority                    = 100
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "3389"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = each.value.resource_group_name
    network_security_group_name = azurerm_network_security_group.nsg[each.key].name
  
}

resource "azurerm_subnet_network_security_group_association" "nshasscoia" {
    for_each = var.nsg
    subnet_id                 = each.value.subnet_id
    network_security_group_id = azurerm_network_security_group.nsg[each.key].id
  
}
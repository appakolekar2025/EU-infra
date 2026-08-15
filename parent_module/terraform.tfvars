resource_groups = {
  rg1 = {
    name     = "dilip-rg"
    location = "East US"
  }
  rg2 = {
    name     = "vikas-rg"
    location = "East US"
  }
}

# subnet = {
#   "snet1" = {
#     name                 = "frontend-subnet"
#     resource_group_name  = "dilip-rg"
#     virtual_network_name = "aug-vnet"
#     address_prefixes     = ["10.0.1.0/24"]
#   }
#   "snet2" = {
#     name                 = "backend-subnet"
#     resource_group_name  = "dilip-rg"
#     virtual_network_name = "aug-vnet"
#     address_prefixes     = ["10.0.2.0/24"]
#   }
#   "snet3" = {
#     name                 = "database-subnet"
#     resource_group_name  = "dilip-rg"
#     virtual_network_name = "aug-vnet"
#     address_prefixes     = ["10.0.3.0/24"]
#   }
#   "snet4" = {
#     name                 = "AzureBastionSubnet"
#     resource_group_name  = "dilip-rg"
#     virtual_network_name = "aug-vnet"
#     address_prefixes     = ["10.0.4.0/24"]
#   }
# }

# network_security_group = {
#   "nsg1" = {
#     name                = "aug-nsg"
#     resource_group_name = "dilip-rg"
#     location            = "East US"
#   }
# }
# network_interface = {
#   "nic1" = {
#     name                 = "frontend-nic"
#     location             = "East US"
#     resource_group_name  = "dilip-rg"
#     subnet_name          = "frontend-subnet"
#     virtual_network_name = "aug-vnet"

#   }
#   "nic2" = {
#     name                 = "backend-nic"
#     location             = "East US"
#     resource_group_name  = "dilip-rg"
#     subnet_name          = "backend-subnet"
#     virtual_network_name = "aug-vnet"

#   }
#   "nic3" = {
#     name                 = "database-nic"
#     location             = "East US"
#     resource_group_name  = "dilip-rg"
#     subnet_name          = "database-subnet"
#     virtual_network_name = "aug-vnet"

#   }
# }

# bastion = {
#   "bastion1" = {
#     name                 = "aug-bastion"
#     resource_group_name  = "dilip-rg"
#     location             = "East US"
#     virtual_network_name = "aug-vnet"
#     subnet_name          = "AzureBastionSubnet"
#   }
# }

# key_vault = {
#   "kv1" = {
#     name                = "aug-kv"
#     resource_group_name = "dilip-rg"
#     location            = "East US"
#     sku_name            = "standard"
#   }
# }

# virtual_machine = {
#   vm1 = {
#     name                = "frontend-vm"
#     resource_group_name = "dilip-rg"
#     location            = "East US"
#     size                = "Standard_B1s"
#     admin_username      = "adminuser"
#     admin_password      = "P@ssw0rd1234!"
#     nic_name            = "frontend-nic"

#     os_disk = {
#       caching              = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#     }
#     source_image_reference = {
#       publisher = "MicrosoftWindowsServer"
#       offer     = "WindowsServer"
#       sku       = "2019-Datacenter"
#       version   = "latest"
#     }
#   }
#   vm2 = {
#     name                = "backend-vm"
#     resource_group_name = "dilip-rg"
#     location            = "East US"
#     size                = "Standard_B1s"
#     admin_username      = "adminuser"
#     admin_password      = "P@ssw0rd1234!"
#     nic_name            = "backend-nic"

#     os_disk = {
#       caching              = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#     }
#     source_image_reference = {
#       publisher = "MicrosoftWindowsServer"
#       offer     = "WindowsServer"
#       sku       = "2019-Datacenter"
#       version   = "latest"
#     }
#   }
#   vm3 = {
#     name                = "database-vm"
#     resource_group_name = "dilip-rg"
#     location            = "East US"
#     size                = "Standard_B1s"
#     admin_username      = "adminuser"
#     admin_password      = "P@ssw0rd1234!"
#     nic_name            = "database-nic"

#     os_disk = {
#       caching              = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#     }
#     source_image_reference = {
#       publisher = "MicrosoftWindowsServer"
#       offer     = "WindowsServer"
#       sku       = "2019-Datacenter"
#       version   = "latest"
#     }
#   }
# }
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  for_each                   = var.kv
  name                       = each.value.name
  location                   = each.value.location
  resource_group_name        = each.value.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = each.value.sku_name
  rbac_authorization_enabled = true
  purge_protection_enabled   = false
  soft_delete_retention_days = 7
}

resource "azurerm_role_assignment" "kv_secrets_officer" {
  for_each             = var.kv
  scope                = azurerm_key_vault.kv[each.key].id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azurerm_client_config.current.object_id
}

resource "random_password" "vm_password" {
  for_each    = var.kv
  length      = 20
  special     = true
  min_upper   = 2
  min_lower   = 2
  min_numeric = 2
  min_special = 2
}

resource "azurerm_key_vault_secret" "vm_password" {
  depends_on   = [azurerm_role_assignment.kv_secrets_officer]
  for_each     = var.kv
  name         = "vm-password"
  value        = random_password.vm_password[each.key].result
  key_vault_id = azurerm_key_vault.kv[each.key].id
}
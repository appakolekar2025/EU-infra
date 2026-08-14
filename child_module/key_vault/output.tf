output "key_vault_ids" {
  value = { for k, v in azurerm_key_vault.kv : k => v.id }
}

output "secret_ids" {
  value = { for k, v in azurerm_key_vault_secret.vm_password : k => v.id }
}

output "secret_values" {
  value     = { for k, v in azurerm_key_vault_secret.vm_password : k => v.value }
  sensitive = true
}

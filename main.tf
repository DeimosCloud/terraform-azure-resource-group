resource "azurerm_resource_group" "resource_group" {
  name     = "${var.name}-rg"
  location = var.location
  tags     = var.tags
}

resource "azurerm_management_lock" "resource-group-level" {
  count      = var.lock ? 1 : 0
  name       = "${var.name}-lock"
  scope      = azurerm_resource_group.resource_group.id
  lock_level = var.lock_level
  notes      = var.lock_notes
}

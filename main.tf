resource "databricks_schema" "schemas" {
  for_each = var.schemas

  catalog_name                   = each.value.catalog_name
  name                           = each.value.name
  comment                        = each.value.comment
  enable_predictive_optimization = each.value.enable_predictive_optimization
  force_destroy                  = each.value.force_destroy
  metastore_id                   = each.value.metastore_id
  owner                          = each.value.owner
  properties                     = each.value.properties
  storage_root                   = each.value.storage_root

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}


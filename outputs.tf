output "schemas_id" {
  description = "Map of id values across all schemas, keyed the same as var.schemas except keys with no id are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schemas_catalog_name" {
  description = "Map of catalog_name values across all schemas, keyed the same as var.schemas except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "schemas_comment" {
  description = "Map of comment values across all schemas, keyed the same as var.schemas except keys with no comment are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "schemas_enable_predictive_optimization" {
  description = "Map of enable_predictive_optimization values across all schemas, keyed the same as var.schemas except keys with no enable_predictive_optimization are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.enable_predictive_optimization if v.enable_predictive_optimization != null && length(v.enable_predictive_optimization) > 0 }
}
output "schemas_force_destroy" {
  description = "Map of force_destroy values across all schemas, keyed the same as var.schemas except keys with no force_destroy are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.force_destroy if v.force_destroy != null }
}
output "schemas_metastore_id" {
  description = "Map of metastore_id values across all schemas, keyed the same as var.schemas except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "schemas_name" {
  description = "Map of name values across all schemas, keyed the same as var.schemas except keys with no name are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "schemas_owner" {
  description = "Map of owner values across all schemas, keyed the same as var.schemas except keys with no owner are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "schemas_properties" {
  description = "Map of properties values across all schemas, keyed the same as var.schemas except keys with no properties are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "schemas_provider_config" {
  description = "Map of provider_config values across all schemas, keyed the same as var.schemas except keys with no provider_config are omitted"
  value       = { for k, v in databricks_schema.schemas : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "schemas_schema_id" {
  description = "Map of schema_id values across all schemas, keyed the same as var.schemas except keys with no schema_id are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.schema_id if v.schema_id != null && length(v.schema_id) > 0 }
}
output "schemas_storage_root" {
  description = "Map of storage_root values across all schemas, keyed the same as var.schemas except keys with no storage_root are omitted"
  value       = { for k, v in databricks_schema.schemas : k => v.storage_root if v.storage_root != null && length(v.storage_root) > 0 }
}


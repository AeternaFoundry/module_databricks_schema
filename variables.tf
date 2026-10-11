variable "schemas" {
  description = <<EOT
Map of schemas, attributes below
Required:
    - catalog_name
    - name
Optional:
    - comment
    - enable_predictive_optimization
    - force_destroy
    - metastore_id
    - owner
    - properties
    - storage_root
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    catalog_name                   = string
    name                           = string
    comment                        = optional(string)
    enable_predictive_optimization = optional(string)
    force_destroy                  = optional(bool)
    metastore_id                   = optional(string)
    owner                          = optional(string)
    properties                     = optional(map(string))
    storage_root                   = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}


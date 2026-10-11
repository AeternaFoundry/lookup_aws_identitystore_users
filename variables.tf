variable "identitystore_users_lookup" {
  description = <<EOT
Map of identitystore_users_lookup, attributes below
Required:
    - identity_store_id
Optional:
    - region
EOT

  type = map(object({
    identity_store_id = string
    region            = optional(string)
  }))
}


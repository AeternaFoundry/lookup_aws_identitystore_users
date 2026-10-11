output "identitystore_users_lookup_identity_store_id" {
  description = "Map of identity_store_id values across all identitystore_users_lookup, keyed the same as var.identitystore_users_lookup"
  value       = { for k, v in data.aws_identitystore_users.identitystore_users_lookup : k => v.identity_store_id if v.identity_store_id != null && length(v.identity_store_id) > 0 }
}
output "identitystore_users_lookup_region" {
  description = "Map of region values across all identitystore_users_lookup, keyed the same as var.identitystore_users_lookup"
  value       = { for k, v in data.aws_identitystore_users.identitystore_users_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "identitystore_users_lookup_users" {
  description = "Map of users values across all identitystore_users_lookup, keyed the same as var.identitystore_users_lookup"
  value       = { for k, v in data.aws_identitystore_users.identitystore_users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}


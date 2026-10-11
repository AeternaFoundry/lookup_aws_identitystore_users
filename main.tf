data "aws_identitystore_users" "identitystore_users_lookup" {
  for_each = var.identitystore_users_lookup

  identity_store_id = each.value.identity_store_id
  region            = each.value.region
}


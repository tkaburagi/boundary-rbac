resource "boundary_credential_library_vault" "rds_user_1" {
  name                = "KV RDS MySQL Library (DB-1)"
  description         = "KV RDS MySQL"
  credential_store_id = boundary_credential_store_vault.vault.id
  path                = var.vault_kv_path_rds_user_1
  http_method         = "GET"
}

resource "boundary_credential_library_vault" "rds_user_2" {
  name                = "KV RDS MySQL Library (DB-2)"
  description         = "KV RDS MySQL"
  credential_store_id = boundary_credential_store_vault.vault.id
  path                = var.vault_kv_path_rds_user_2
  http_method         = "GET"
}

resource "boundary_credential_library_vault"  "ec2_1_user"{
  name                = "KV EC2 1 User 1 Library"
  description         = "KV SSH"
  credential_store_id = boundary_credential_store_vault.vault.id
  path                = var.vault_kv_path_ec2_1_user
  http_method         = "GET"
}

resource "boundary_credential_library_vault"  "ec2_2_user"{
  name                = "KV EC2 2 User Library"
  description         = "KV SSH"
  credential_store_id = boundary_credential_store_vault.vault.id
  path                = var.vault_kv_path_ec2_2_user
  http_method         = "GET"
}

resource "boundary_credential_library_vault" "gce_user" {
  name                = "KV GCE Library"
  description         = "KV GCE"
  credential_store_id = boundary_credential_store_vault.vault.id
  path                = var.vault_kv_path_gce_user
  http_method         = "GET"
}
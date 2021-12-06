resource "boundary_target" "web_app_1_ssh" {
  name         = "webapp_1_ssh"
  description  = "Web App 1 SSH"
  type         = "tcp"
  default_port = "22"
  scope_id     = boundary_scope.project.id
  host_source_ids = [
    boundary_host_set.aws_web_app_1.id,
    boundary_host_set.gce_web_app_1.id,
  ]
  application_credential_source_ids = [
    boundary_credential_library_vault.ec2_1_user.id,
    boundary_credential_library_vault.gce_user.id
  ]
}

resource "boundary_target" "web_app_1_mysql" {
  name         = "webapp_1_mysql"
  description  = "Web App 1 MySQL"
  type         = "tcp"
  default_port = "3306"
  scope_id     = boundary_scope.project.id
  host_source_ids = [
    boundary_host_set.aws_database.id
  ]
  application_credential_source_ids = [
    boundary_credential_library_vault.rds_user_1.id
  ]
}

resource "boundary_target" "web_app_2_ssh" {
  name         = "webapp_2_ssh"
  description  = "Web App 2 SSH"
  type         = "tcp"
  default_port = "22"
  scope_id     = boundary_scope.project.id
  host_source_ids = [
    boundary_host_set.aws_web_app_2.id,
    boundary_host_set.aws_web_app_1.id,
  ]
    application_credential_source_ids = [
      boundary_credential_library_vault.ec2_1_user.id,
      boundary_credential_library_vault.ec2_2_user.id
    ]
}

resource "boundary_target" "web_app_2_mysql" {
  name         = "webapp_2_mysql"
  description  = "Web App 2 MySQL"
  type         = "tcp"
  default_port = "3306"
  scope_id     = boundary_scope.project.id
  host_source_ids = [
    boundary_host_set.aws_database.id
  ]
  application_credential_source_ids = [
    boundary_credential_library_vault.rds_user_2.id
  ]
}

resource "boundary_target" "database" {
  name         = "database"
  description  = "Database"
  type         = "tcp"
  default_port = "3306"
  scope_id     = boundary_scope.project.id
  host_source_ids = [
    boundary_host_set.aws_database.id,
    boundary_host_set.gcp_database.id
  ]
    application_credential_source_ids = [
      boundary_credential_library_vault.rds_user_1.id,
      boundary_credential_library_vault.rds_user_2.id,
    ]
}
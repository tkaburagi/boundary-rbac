resource "boundary_host" "ec2-1" {
  name            = "ec2-1"
  type            = "static"
  address         = var.ec2_host_1
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
}

resource "boundary_host" "ec2-2" {
  name            = "ec2-2"
  type            = "static"
  address         = var.ec2_host_2
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
}

resource "boundary_host" "gce" {
  name            = "gce-demo"
  type            = "static"
  address         = var.gce_host
  host_catalog_id = boundary_host_catalog.gcp-host-catalog.id
}

resource "boundary_host" "rds" {
  name            = "rds-demo"
  type            = "static"
  address         = var.rds_host
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
}

resource "boundary_host" "cloud-sql" {
  name            = "cloud-sql-demo"
  type            = "static"
  address         = "thisisfake"
  host_catalog_id = boundary_host_catalog.gcp-host-catalog.id
}

resource "boundary_host_set" "aws_web_app_1" {
  name            = "AWS: Web App 1 hosts set"
  type            = "static"
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
  host_ids = [
    boundary_host.ec2-1.id,
  ]
}

resource "boundary_host_set" "aws_web_app_2" {
  name            = "AWS: Web App 2 hosts set"
  type            = "static"
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
  host_ids = [
    boundary_host.ec2-2.id,
  ]
}
resource "boundary_host_set" "gce_web_app_1" {
  name            = "GCP: Web App 1 hosts set"
  type            = "static"
  host_catalog_id = boundary_host_catalog.gcp-host-catalog.id
  host_ids = [
    boundary_host.gce.id
  ]
}

resource "boundary_host_set" "aws_database" {
  name            = "AWS Database hosts set"
  type            = "static"
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
  host_ids = [
    boundary_host.rds.id
  ]
}

resource "boundary_host_set" "gcp_database" {
  name            = "GCP Database hosts set"
  type            = "static"
  host_catalog_id = boundary_host_catalog.gcp-host-catalog.id
  host_ids = [
    boundary_host.cloud-sql.id
  ]
}
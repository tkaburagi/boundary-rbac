resource "boundary_host" "ec2-1" {
  name            = "aws-demo"
  type            = "static"
  address         = var.ec2_host_1
  host_catalog_id = boundary_host_catalog.aws-host-catalog.id
}

resource "boundary_host" "ec2-2" {
  name            = "aws-demo"
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

resource "boundary_host_set" "web_app_1" {
  name            = "Web App 1 hosts set"
  type            = "static"
  host_catalog_id = boundary_host_catalog.aws-host-catalog
  host_ids = [
    boundary_host.ec2-1.id,
    boundary_host.ec2-2.id,
    boundary_host.rds.id
  ]
}
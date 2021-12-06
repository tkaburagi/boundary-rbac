variable "org-acme" {
  default = "ACME Org"
}

variable "org-emca" {
  default = "EMCA Org"
}

variable "signing_algorithms" {
  default = ["RS256"]
}
variable "vault_token_for_boundary" {
  default = "s.YCyuKrTcCyniwu7qYEqAtQen"
}
variable "vault_fqdn" {
  default = "http://127.0.0.1:8200"
}

variable "vault_kv_path_rds_user_1" {
  default = "boundary-rbac-demo/rds-user-1"
}

variable "vault_kv_path_rds_user_2" {
  default = "boundary-rbac-demo/rds-user-2"
}

variable "vault_kv_path_ec2_1_user" {
  default = "boundary-rbac-demo/ec2-user"
}

variable "vault_kv_path_ec2_2_user" {
  default = "boundary-rbac-demo/ec2-user-2"
}

variable "vault_kv_path_gce_user" {
  default = "boundary-rbac-demo/gce-user"
}

variable "ec2_host_1" {
  default = ""
}
variable "ec2_host_2" {
  default = ""
}
variable "gce_host" {
  default = ""
}
variable "rds_host" {
  default = ""
}
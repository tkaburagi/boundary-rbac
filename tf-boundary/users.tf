resource "boundary_account" "Tadashi" {
  description = "Auditor for Project X"
  auth_method_id = boundary_auth_method.password.id
  type           = "password"
  login_name     = "tadashi"
  password       = "password"
}

resource "boundary_user" "Tadashi" {
  name        = "tadashi"
  description = "Auditor for Project X"
  account_ids = [boundary_account.Tadashi.id]
  scope_id    = boundary_scope.org.id
}

resource "boundary_account" "Kazuto" {
  description = "Developer for Webapp 1"
  auth_method_id = boundary_auth_method.password.id
  type           = "password"
  login_name     = "kazuto"
  password       = "password"
}

resource "boundary_user" "Kazuto" {
  name        = "kazuto"
  description = "Developer for Webapp 1"
  account_ids = [boundary_account.Kazuto.id]
  scope_id    = boundary_scope.org.id
}

resource "boundary_account" "Shogo" {
  description = "Developer for Webapp 2"
  auth_method_id = boundary_auth_method.password.id
  type           = "password"
  login_name     = "shogo"
  password       = "password"
}

resource "boundary_user" "Shogo" {
  name        = "shogo"
  description = "Developer for Webapp 2"
  account_ids = [boundary_account.Shogo.id]
  scope_id    = boundary_scope.org.id
}

resource "boundary_account" "Masa" {
  description = "DB Admin"
  auth_method_id = boundary_auth_method.password.id
  type           = "password"
  login_name     = "masa"
  password       = "password"
}

resource "boundary_user" "Masa" {
  name        = "masa"
  description = "DB Admin"
  account_ids = [boundary_account.Masa.id]
  scope_id    = boundary_scope.org.id
}

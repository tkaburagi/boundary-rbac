resource "boundary_auth_method" "password" {
  scope_id = boundary_scope.org.id
  type     = "password"
}
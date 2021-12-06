resource "boundary_role" "web_app_1_dev" {
  name           = "Webapp 1 Developer Role"
  grant_scope_id = boundary_scope.project.id
  grant_strings = [
    "id=${boundary_target.web_app_1_ssh.id};actions=*",
    "id=${boundary_target.web_app_1_mysql.id};actions=*",
    "id=*;type=session;actions=cancel:self,read",
    "id=*;type=target;actions=list",
    "id=*;type=host-set;actions=list,read",
    "id=*;type=host;actions=list,read"
  ]
  scope_id      = boundary_scope.org.id
  principal_ids = [boundary_user.Kazuto.id]
}

resource "boundary_role" "web_app_2_dev" {
  name           = "Webapp 2 Developer Role"
  grant_scope_id = boundary_scope.project.id
  grant_strings = [
    "id=${boundary_target.web_app_2_ssh.id};actions=*",
    "id=${boundary_target.web_app_2_mysql.id};actions=*",
    "id=*;type=session;actions=cancel:self,read",
    "id=*;type=target;actions=list",
    "id=*;type=host-set;actions=list,read",
    "id=*;type=host;actions=list,read"
  ]
  scope_id      = boundary_scope.org.id
  principal_ids = [boundary_user.Shogo.id]
}

resource "boundary_role" "db-admin" {
  name           = "Database Administrator Role"
  grant_scope_id = boundary_scope.project.id
  grant_strings = [
    "id=${boundary_target.database.id};actions=*",
    "id=*;type=session;actions=cancel:self,read",
    "id=*;type=target;actions=list",
    "id=*;type=host-set;actions=list,read",
    "id=*;type=host;actions=list,read",
  ]
  scope_id      = boundary_scope.org.id
  principal_ids = [boundary_user.Masa.id]
}

resource "boundary_role" "auditor" {
  name           = "Project Auditor Role"
  grant_scope_id = boundary_scope.project.id
  grant_strings = [
    "id=*;type=*;actions=read,list"
  ]
  scope_id      = boundary_scope.org.id
  principal_ids = [boundary_user.Tadashi.id]
}
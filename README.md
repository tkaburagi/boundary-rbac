## Slide
[Slide](https://docs.google.com/presentation/d/1AEoOEKt5OP1RCK4uCwVFqLOOD_4VAFA_du5-ID_VxmM/edit?usp=sharing)

## Setup

## Infra
Create an RDS MySQL instance in a Free plan.

```
git clone thisrepo
cd thisrepo/tf-infra
t apply
```

## Vault
```
vault policy write boundary-rbac-demo vault-policies/allinone.hcl

vault token create \
    -no-default-policy=true \
    -policy="boundary-rbac-demo" \
    -orphan=true \
    -renewable=true \
    -period=765h

vault kv put boundary-rbac-demo/rds-user-1 username=webapp1_db_user password=

vault kv put boundary-rbac-demo/rds-user-2 username=webapp2_db_user password=

vault kv put boundary/gce-user username=centos password=

vault kv put boundary/ec2-user username=ubuntu password=

vault kv put boundary/ec2-user-2 username=ubuntu password=
```

## MySQL
Login RDS MySQL
```
create database webapp1;
create database webapp2;
create user webapp1_db_user IDENTIFIED BY '';
create user webapp2_db_user IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON webapp1.* TO webapp1_db_user;
GRANT ALL PRIVILEGES ON webapp2.* TO webapp2_db_user;
```

## Boundary
```
cd thisrepo/tf-boundary
t apply
```

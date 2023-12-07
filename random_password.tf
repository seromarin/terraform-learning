resource "random_password" "super_secret_passwd" {
  length = 16
  special = true
  override_special = "_%@"
}
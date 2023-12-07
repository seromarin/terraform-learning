resource "local_file" "my_local_file" {
  depends_on = [ random_password.super_secret_passwd ]
  content  = random_password.super_secret_passwd.result
  filename = "${path.module}/files/hello.txt"
}
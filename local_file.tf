resource "local_file" "my_local_file" {
  depends_on = [ random_password.super_secret_passwd ]
  # content  = random_password.super_secret_passwd.result
  content  = "Hello, Terraform!\nIP: ${var.local_file_content}\nPORT: ${var.ui_port}"
  filename = "${path.module}/files/hello.txt"
}
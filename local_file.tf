locals {
	service_name = "foo"
	owner        = "bar"
}

resource "local_file" "my_local_file" {
  depends_on = [ random_password.super_secret_passwd ]
  # content  = random_password.super_secret_passwd.result
  content  = "Hello, ${local.service_name}!\nIP: ${var.local_file_content}\nPORT: ${var.ui_port}"
  filename = "${path.module}/files/hello.txt"
}
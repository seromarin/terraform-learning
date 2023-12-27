locals {
	service_name = "foo"
	owner        = "bar"
}

# resource "local_file" "my_local_file" {
#   depends_on = [ random_password.super_secret_passwd ]
#   # content  = random_password.super_secret_passwd.result
#   content  = "Hello, ${local.service_name}!\nIP: ${var.local_file_content}\nPORT: ${var.ui_port}"
#   filename = "${path.module}/files/hello.txt"
# }

resource "local_file" "creation_files" {
  depends_on = [ random_password.super_secret_passwd ]
  count = 5
  content  = "Hello, ${local.service_name}!"
  filename = "${path.module}/files/${random_password.super_secret_passwd.result}-${count.index}.txt"
}
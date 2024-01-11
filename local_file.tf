# locals {
# 	service_name = "foo"
# 	owner        = "bar"
# }

# resource "local_file" "my_local_file" {
#   depends_on = [ random_password.super_secret_passwd ]
#   # content  = random_password.super_secret_passwd.result
#   content  = "Hello, ${local.service_name}!\nIP: ${var.local_file_content}\nPORT: ${var.ui_port}"
#   filename = "${path.module}/files/hello.txt"
# }

resource "local_file" "creation_files" {
  depends_on = [ random_password.super_secret_passwd ]
  count = 5
  content  = "Hello, u!"
  filename = "${path.module}/files/${random_password.super_secret_passwd.result}-${count.index}.txt"
}

resource "local_file" "for_each_files" {
  for_each = toset(["foo", "bar", "baz"])
  content = "No matter"
  filename = "${path.module}/files/${each.value}.txt"
}

resource "local_file" "map_files" {
  for_each = {
    file1 = "my_new_map_file",
    file2 = "my_other_new_map_file"
  }
  content = "this is ${each.value}"
  filename = "${path.module}/files/${each.key}-${each.value}.txt"
}
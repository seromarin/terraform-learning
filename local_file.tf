resource "local_file" "my_local_file" {
  content  = "Hello Terraform!"
  filename = "${path.module}/files/hello.txt"
}
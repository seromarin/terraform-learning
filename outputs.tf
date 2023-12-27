# output "file_path" {
#   description = "value of the file_path output variable"
#   value = local_file.my_local_file.filename
# }

output "super_secret_passwd_value" {
  description = "value of the super_secret_passwd_value output variable"
  value = random_password.super_secret_passwd.result
  sensitive = true
}
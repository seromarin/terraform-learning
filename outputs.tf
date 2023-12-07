output "file_path" {
  description = "value of the file_path output variable"
  value = local_file.my_local_file.filename
}
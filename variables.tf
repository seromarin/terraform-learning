variable "local_file_content" {
  description = "value of the local_file_content input content"
  validation {
    condition     = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", var.local_file_content))
    error_message = "The IP address must be a valid IPv4 address in the format 'x.x.x.x', where x is a number between 0 and 255."
  }
  type        = string
}
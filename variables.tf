variable "local_file_content" {
  description = "value of the local_file_content input content"
  validation {
    condition     = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", var.local_file_content))
    error_message = "The IP address must be a valid IPv4 address in the format 'x.x.x.x', where x is a number between 0 and 255."
  }
  type = string
}

variable "ui_port" {
  description = "value of the ui_port input content"
  validation {
    condition     = can(regex("^[0-9]{1,5}$", var.ui_port))
    error_message = "The port must be a valid port number in the range 0-65535."
    }
  type = string
}

# Create new variable
# Call it Prot
# Add validation for actual port input
# Add output of this variable into the file after
# "Your port will be:"

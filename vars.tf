
variable "prefix" {
  type = string
}

variable "separator" {
  type = string
  validation {
    condition     = contains(["-", "_", "/"], var.separator)
    error_message = "Separator must be one of: - _ /"
  }
}

variable "length" {
  type = number
  validation {
    condition     = var.length >= 1
    error_message = "Length must be a positive"
  }
  validation {
    condition     = var.length == floor(var.length)
    error_message = "Length must be an integer"
  }
}

variable "aws_region" {
  type        = string
  default     = ""
  description = ""
}

variable "instance_type" {
  type        = string
  default     = ""
  description = ""
}

variable "instance_create" {
  type        = bool
  default     = true
  description = ""
}

variable "instance_count" {
  type        = number
  default     = 1
  description = ""
}
variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS Region"
}

variable "instance_type" {
  type        = string
  default     = ""
  description = ""
}

variable "instance_create" {
  type        = bool
  default     = false
  description = ""
}

variable "instance_count" {
  type        = number
  default     = 0
  description = ""
}

variable "ignore_ami_changes" {
  type        = bool
  default     = true
  description = "Do not taint instance when the value for ami_id changes"
}

variable "ami_id" {
  type        = string
  default     = ""
  description = "AMI ID for Instance"
}

variable "stack" {
  type        = string
  default     = ""
  description = "Optional descriptor shared amongst all deployed module instances Name values"
}

variable "os_name" {
  type        = string
  default     = ""
  description = "Optional descriptor shared amongst all deployed module instances Name values"
}

variable "os_name" {
  type        = string
  default     = ""
  description = "Optional descriptor shared amongst all deployed module instances Name values"
}

variable "randomness" {
  type        = string
  default     = ""
  description = "Optional descriptor shared amongst all deployed module instances Name values"
}
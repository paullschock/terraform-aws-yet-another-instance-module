variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region"
}

variable "instance_size" {
    type        = string
    default     = ""
    description = "Provide an input if you wish to override the default 't3a.medium' selection"
}
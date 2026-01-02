variable "name_prefix" {
  description = "Prefix used for naming and tagging"
  type        = string
}

variable "environment" {
  description = "Environment name (dev/test/prod)"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "additional_tags" {
  description = "Extra tags merged into common tags"
  type        = map(string)
  default     = {}
}

variable "vpc_name" {
  type = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "subnet_cidr" {
  description = "Public Subnet CIDR Block"
  type        = string
}

variable "admin_cidr" {
  description = "Trusted public IP/CIDR allowed to SSH, e.g. 203.0.113.10/32"
  type        = string

  validation {
    condition     = can(cidrhost(var.admin_cidr, 0))
    error_message = "admin_cidr must be a valid IPv4 CIDR block."
  }
}

variable "ami_id" {
  description = "Valid Linux AMI ID for the selected AWS region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

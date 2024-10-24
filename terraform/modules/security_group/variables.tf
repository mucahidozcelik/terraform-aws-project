variable "security_group_name" {
  description = "Name of the Security Group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

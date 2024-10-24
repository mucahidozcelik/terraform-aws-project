variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be deployed"
  type        = string
}

variable "security_groups" {
  description = "A list of security groups to associate with the EC2 instance"
  type        = list(string)
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
}

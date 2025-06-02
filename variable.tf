variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/26"
}

variable "public_cidr" {
    type = string
    default = "10.0.0.0/28"
}

variable "availability_zone" {
  type = string 
  default = "us-east-1a"
}

variable "region_value" {
  description = "value for the region"
}

variable "ami_value" {
  description = "value for the ami"
}

variable "instance_type" {
    description = "value for the instance type"
}

variable "ec2_instance_count" {
  description = "value for the ami"
}

variable "subnet_id_value" {
    description = "value for the subnet id"
}

variable "security_group_value" {
  description = "value for the security group"
}

variable "key_name" {
  description = "Name of the SSH key pair"
}
variable "ami_value" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default = "t2.medium"
}

variable "ec2_instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default = 1
}

variable "subnet_id_value" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "security_group_value" {
  description = "Security Group ID for the EC2 instance"
  type        = string
}


variable "key_name" {
  description = "Name of the existing AWS key pair"
  type        = string
  default     = "docker.pem"
  }
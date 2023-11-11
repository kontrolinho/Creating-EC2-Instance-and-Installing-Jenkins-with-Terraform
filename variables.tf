variable "instance_name" {
    default = "Jenkins_Instance"
    description = "Name of the Instance"
    type = string
  
}
variable instance_type {
    default = "t2.small"
    description = "Type of your instance"
    type = string
}

variable "availability_zone" {
  default = "us-east-1a"
  description = "Availability Zone of your instance"
  type = string
}

variable "ami" {
  default = "ami-0fc5d935ebf8bc3bc"
  description = "AMI ID"
  type = string
}
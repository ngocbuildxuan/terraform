provider "aws" {
  region = "ap-northeast-1"
}

variable "vpc_name" {
  type = string
  default = "ngoc_terraform_vpc"
}

variable "ssh_port" {
  type = number
  default = 22
}

variable "enabled" {
  type = bool
  default = true
}

variable "list_ip" {
  type = list(string)
  default = [ "1.1.1.1", "1.3.3.2" ]
}

variable "map_ec2_ip" {
  type = map(string)
  default = {
    name1 = "value1",
    name2 = "value2",
  }
}

variable "input_when_create" {
  type = string
  description = "Nice message for this input"
}

### RESOURCES ###
resource "aws_vpc" "ngoc_terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name: var.input_when_create
  }
}


### OUTPUTS ###

output "vpc_id" {
  value = aws_vpc.ngoc_terraform_vpc.id
}


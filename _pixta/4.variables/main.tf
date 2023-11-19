variable "ec2_name" {
  type = string
  default = "docker build dat"
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


provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-08a706ba5ea257141"
  instance_type = "t2.micro"
  tags = {
    Name = var.ec2_name
  }
}

output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "ec2_tag_name" {
  value = aws_instance.ec2.tags.Name
}

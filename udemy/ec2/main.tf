provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-08a706ba5ea257141"
  instance_type = "t2.micro"
}


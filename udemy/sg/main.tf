provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-08a706ba5ea257141"
  instance_type = "t2.micro"
  security_groups = [ aws_security_group.web_traffic.name ]
}

resource "aws_security_group" "web_traffic" {
  name = "Allow HTTPS"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

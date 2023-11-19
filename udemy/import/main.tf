provider "aws" {
    region = "ap-northeast-1"
}

resource "aws_instance" "ec2_build_docker" {

}

# terraform import aws_instance.ec2_build_docker i-09d9111e12cf3135c

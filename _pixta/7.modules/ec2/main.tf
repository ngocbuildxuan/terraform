variable "ec2_name" {
    type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-08a706ba5ea257141"
    instance_type = "t2.micro"
    tags = {
        Name = var.ec2_name 
    }
}

provider "aws" {
    region = "ap-northeast-1"
}

# resource "aws_instance" "ec2_ims" {
#     ami = "ami-08a706ba5ea257141"
#     instance_type = "t2.micro"
#     count = 2
# }

# output "ec_ims_public_ip" {
#     value = aws_instance.ec2_ims.*.public_ip
# }


variable "ec2_names" {
    type = list(string)
    # default = [ "value" ]
}

resource "aws_instance" "ec2_ubuntu" {
    ami = "ami-08a706ba5ea257141"
    instance_type = "t2.micro"
    count = length(var.ec2_names)
    tags = {
        Name: var.ec2_names[count.index]
    }
}

output "name_ec2" {
    value = aws_instance.ec2_ubuntu.*.tags.Name
}
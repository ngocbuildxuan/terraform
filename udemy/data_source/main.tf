provider "aws" {
  region = "ap-southeast-1"
}

data "aws_instance" "ims_instances_for_ar" {
    filter {
        name = "tag:Name"
        values = [ "prod-DAT-fiftyone" ]
    }

    filter {
        name   = "instance-state-name"
        values = ["running"]
    }
}

output "name_ec2" {
    value = data.aws_instance.ims_instances_for_ar.public_ip
}
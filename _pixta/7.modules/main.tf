# Module is the folder that code inside it

provider "aws" {
  region = "ap-northeast-1"
}


module "ec2_module" {
    source = "./ec2"
    ec2_name = "ec2_module_name"
}


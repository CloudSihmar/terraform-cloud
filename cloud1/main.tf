provider "aws" {
   region     = var.region
}

module "webserver-1" {
  source  = "CloudSihmar/ec2-instance1/aws"
  version = "1.0.3"
  ami = var.ami
  instance_type = var.instance_type
}
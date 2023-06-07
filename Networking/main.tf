provider "aws" {
  region = var.aws_region

}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  # VPC
  name           = var.vpc_name
  cidr           = var.vpc_cidr_block
  azs            = var.vpc_availability_zones
  public_subnets = var.vpc_public_subnets
  
  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Department = "Prod"
  }
  vpc_tags = {
    VPC_Region = var.aws_region

  }

  #Tags - Subnets
  public_subnet_tags = {
    Subnet_Type = "Public Subnets"
  }

}

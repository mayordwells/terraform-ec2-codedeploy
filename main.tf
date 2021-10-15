terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.62.0"
    }
  }
}

provider "aws" {
  profile = "creativeminds"
  region = "eu-west-1"
}

module "lb" {
  source  = "./modules/lb"
  name = "ec2-codedeploy-alb"

  load_balancer_type = "application"

  vpc_id             = var.vpc_id
  subnets            = var.subnets
  security_groups    = var.security_groups
}

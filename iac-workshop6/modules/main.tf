terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-2" # Update with your preferred region
}


module "ec2" {
  source             = "./ec2"
  security_group_ids = [module.sg.sg_id]
  region             = var.region
  owner              = var.owner
  message            = "Workshop Demo"
}

module "sg" {
  source      = "./sg"
  server_port = 80
  owner       = "daniela"
}

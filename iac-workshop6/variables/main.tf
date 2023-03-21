
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "variables_ws6_daniela_ec2" {
  ami = "ami-074cce78125f09d61" # For us-east-2
  #ami               = "ami-02f3f602d23f1659d" #For us-east-1
  #ami               = "ami-06604eb73be76c003" #For us-west-1
  #ami               = "ami-0d2017e886fc2c0ab" #For us-west-2
  instance_type = "t2.micro"
  #vpc_security_group_ids = [aws_security_group.variables_ws6_daniela_ec2_sg.id]
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              echo "<h1>Welcome to the SRE Bootcamp - Workshop 6!</h1>" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
              EOF
  tags = {
    Name        = "variables-ws6-daniela-ec2" # Update the name
    Terraform   = "true"
    Service     = "EC2"
    Project     = "sre-bootcamp-2023"
    Environment = "dev"
  }
}

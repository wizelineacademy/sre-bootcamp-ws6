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


# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "hello_world_ws6_daniela_s3" {
  bucket = "hello-world-ws6-daniela-s3"
  tags = {
    Name        = "hello-world-ws6-daniela-s3"
    Terraform   = "true"
    Service     = "S3"
    Project     = "sre-bootcamp-2023"
    Environment = "dev"
  }
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration
# resource "aws_s3_bucket_website_configuration" "hello_world_ws6_daniela_s3_web_config" {
#   bucket = aws_s3_bucket.hello_world_ws6_daniela_s3.id
#   index_document {
#     suffix = "index.html"
#   }
#   error_document {
#     key = "error.html"
#   }
# }

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy
# resource "aws_s3_bucket_policy" "allow_public_access" {
#   bucket = aws_s3_bucket.hello_world_ws6_daniela_s3.id
#   # Update the BUCKET_NAME  in the policy
#   policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Sid" : "PublicReadGetObject",
#         "Effect" : "Allow",
#         "Principal" : "*",
#         "Action" : [
#           "s3:GetObject"
#         ],
#         "Resource" : [
#           "arn:aws:s3:::BUCKET_NAME/*"
#         ]
#       }
#     ]
#   })
# }

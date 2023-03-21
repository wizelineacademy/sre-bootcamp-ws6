#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "main_ec2" {
  ami = var.images["${var.region}"] # For us-east-2
  #ami               = "ami-02f3f602d23f1659d" #For us-east-1
  #ami               = "ami-06604eb73be76c003" #For us-west-1
  #ami               = "ami-0d2017e886fc2c0ab" #For us-west-2
  instance_type          = "t2.micro"
  vpc_security_group_ids = var.security_group_ids
  user_data              = <<-EOF
             #!/bin/bash
             yum update -y
             yum install -y httpd
             echo "<h1>Welcome to the SRE Bootcamp - ${var.message}!</h1>" > /var/www/html/index.html
             systemctl start httpd
             systemctl enable httpd
             EOF
  tags = {
    Name       = "${var.instance_name}-${var.owner}" # Update the name
    Terrfaorm  = "true"
    Service    = "EC2"
    Project    = "sre-bootcamp-2023"
    Enviroment = "dev"
  }
}

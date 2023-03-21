resource "aws_security_group" "main_sg" {
  name = "${var.instance_name}-${var.owner}-sg"
  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name       = "${var.instance_name}-${var.owner}" # Update the name
    Terrfaorm  = "true"
    Service    = "Security Groups"
    Project    = "sre-bootcamp-2023"
    Enviroment = "dev"
  }
}

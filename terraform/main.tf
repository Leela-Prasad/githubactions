resource "aws_security_group" "test_sg" {
  name_prefix = "githubactions-sg"
  description = "Github Actions Terraform Security Group"

  vpc_id = "vpc-01624df164089eeca"

  ingress {
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
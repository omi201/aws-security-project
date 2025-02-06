resource "aws_vpc" "secure_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.secure_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = false
}

resource "aws_security_group" "sg_secure" {
  vpc_id = aws_vpc.secure_vpc.id
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_subnet" "public_subnet_1" {
  tags = {
    Name = "Terraform-Public-Subnet-1"
  }

  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
}

resource "aws_subnet" "public_subnet_2" {
  tags = {
    Name = "Terraform-Public-Subnet-2"
  }

  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
}

resource "aws_subnet" "private_subnet_1" {
  tags = {
    Name = "Terraform-Private-Subnet-1"
  }

  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
}

resource "aws_subnet" "private_subnet_2" {
  tags = {
    Name = "Terraform-Private-Subnet-2"
  }

  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
}

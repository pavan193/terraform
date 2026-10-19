resource "aws_internet_gateway" "main_internet_gateway" {
  tags = {
    Name = "Terraform-igw"
  }

  vpc_id = aws_vpc.main_vpc.id
}
resource "aws_eip" "nat_eip" {
  domain = "vpc"

  depends_on = [aws_internet_gateway.main_internet_gateway]
}

resource "aws_nat_gateway" "main_nat_gateway" {
  tags = {
    Name = "Terraform-NAT-Gateway"
  }

  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet_1.id

  depends_on = [aws_internet_gateway.main_internet_gateway, aws_route_table.public_route_table]
}

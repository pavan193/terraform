resource "aws_route_table" "public_route_table" {
  tags = {
    Name = "Terraform-RouteTable"
  }

  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_internet_gateway.id
  }
}

resource "aws_route_table_association" "private_route_table_association_1" {
  route_table_id = aws_route_table.private_route_table.id
  subnet_id      = aws_subnet.private_subnet_1.id
}

resource "aws_route_table_association" "private_route_table_association_2" {
  route_table_id = aws_route_table.private_route_table.id
  subnet_id      = aws_subnet.private_subnet_2.id
}
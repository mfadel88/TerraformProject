resource "aws_route" "PRI-rout" {
  route_table_id = aws_route_table.PRI-RT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.NAT.id
}

resource "aws_route_table_association" "PRI-SN1-ASS" {
  subnet_id      = aws_subnet.PRI-SN1.id
  route_table_id = aws_route_table.PRI-RT.id
}

resource "aws_route_table_association" "PRI-SN2-ASS" {
  subnet_id      = aws_subnet.PRI-SN2.id
  route_table_id = aws_route_table.PRI-RT.id
}

/* resource "aws_route" "PUB-rout" {
  route_table_id = aws_route_table.PUB-RT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "PUB-SN1-ASS" {
  subnet_id      = aws_subnet.PUB-SN1.id
  route_table_id = aws_route_table.PUB-RT.id
}

resource "aws_route_table_association" "PUB-SN2-ASS" {
  subnet_id      = aws_subnet.PUB-SN2.id
  route_table_id = aws_route_table.PUB-RT.id
} */
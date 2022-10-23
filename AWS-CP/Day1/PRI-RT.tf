resource "aws_route_table" "PRI-RT" {
  vpc_id = aws_vpc.MainVPC.id


  tags = {
    Name = "PRI-RTT"
  }
}

resource "aws_route_table" "PUB-RT" {
  vpc_id = aws_vpc.MainVPC.id



  tags = {
    Name = "PUB-RT"
  }
}
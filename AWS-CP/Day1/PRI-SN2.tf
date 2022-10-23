resource "aws_subnet" "PRI-SN2" {
  vpc_id     = aws_vpc.MainVPC.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "PRI-SN2"
  }
}
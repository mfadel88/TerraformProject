resource "aws_subnet" "PRI-SN1" {
  vpc_id     = aws_vpc.MainVPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "PRI-SN1"
  }
}
resource "aws_subnet" "PUB-SN2" {
  vpc_id     = aws_vpc.MainVPC.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "PUB-SN2"
  }
}
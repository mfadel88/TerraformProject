resource "aws_subnet" "PUB-SN1" {
  vpc_id     = aws_vpc.MainVPC.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "PUB-SN1"
  }
}
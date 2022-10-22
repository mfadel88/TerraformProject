resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.MainVPC.id

  tags = {
    Name = "VPC-Fadel-IGW"
  }
}
# Create a VPC
resource "aws_vpc" "MainVPC" {
  cidr_block = "10.0.0.0/16"
    tags = {
    Name = "Terra-Day2-VPC"
  }
}

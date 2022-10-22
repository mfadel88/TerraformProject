resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic"
  vpc_id      = module.network.MainVPC

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    /* cidr_blocks      = [aws_vpc.MainVPC.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.MainVPC.ipv6_cidr_block] */
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}

##########################################################

resource "aws_security_group" "allow-SSH-port3000" {
  name        = "allow_SSH-port3000"
  description = "Allow SSH and port3000 inbound traffic"
  vpc_id      = module.network.MainVPC

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16"]
    /* ipv6_cidr_blocks = [aws_vpc.MainVPC.ipv6_cidr_block] */
  }

 ingress {
    description      = "port3000 from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16"]
    /* ipv6_cidr_blocks = [aws_vpc.MainVPC.ipv6_cidr_block] */
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }



  tags = {
    Name = "allow-SSH-port3000"
  }
}
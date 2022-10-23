resource "aws_instance" "Bastion" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t3.micro"
  associate_public_ip_address = true
  subnet_id = module.network.PUB-SN1
  security_groups = [aws_security_group.allow_SSH.id]
  tags = {
    Name = "Bastion-EC2"
  }
}


resource "aws_instance" "APP-on-PRI" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t3.micro"
  subnet_id = module.network.PRI-SN1
  security_groups = [aws_security_group.allow-SSH-port3000.id]
  tags = {
    Name = "APP-on-PRI"
  }
}
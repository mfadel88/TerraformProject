resource "aws_db_subnet_group" "db-sn-group" {
  name       = "db-sn-group"
  subnet_ids = [module.network.PRI-SN1, module.network.PRI-SN2]

  tags = {
    Name = "DB-SNs-Group"
  }
} 

resource "aws_db_instance" "mysql" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_subnet_group_name = aws_db_subnet_group.db-sn-group.name
  username             = "foo"
  password             = "foobarbaz"
  port                 =  3306
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
resource "aws_db_instance" "smy_mydb" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  name = "mydb"
  identifier = "mydb"
  username = "admin"
  password = "it12345!"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.smy_dbsg.id
  vpc_security_group_ids = [aws_security_group.smy_sg.id]
  skip_final_snapshot = true

  tags = {
    "Name" = "smy-db"
  }
}


resource "aws_db_subnet_group" "smy_dbsg" {
  name = "smy-dbsg"
  subnet_ids = [aws_subnet.smy_pridba.id,aws_subnet.smy_pridbc.id]
}
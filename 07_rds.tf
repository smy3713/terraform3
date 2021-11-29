resource "aws_db_instance" "smy_mydb" {
  allocated_storage = 20
  storage_type = var.storage_type
  engine = var.mysql
  engine_version = "8.0"
  instance_class = "db.${var.instance_type}"
  name = "mydb"
  identifier = "mydb"
  username = "admin"
  password = "it12345!"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "${var.region}${var.ava_zone[0]}"
  db_subnet_group_name = aws_db_subnet_group.smy_dbsg.id
  vpc_security_group_ids = [aws_security_group.smy_sg.id]
  skip_final_snapshot = true

  tags = {
    "Name" = "${var.name}-db"
  }
}


resource "aws_db_subnet_group" "smy_dbsg" {
  name = "${var.name}-dbsg"
  subnet_ids = [aws_subnet.smy_pridb[0].id,aws_subnet.smy_pridb[1].id]
}
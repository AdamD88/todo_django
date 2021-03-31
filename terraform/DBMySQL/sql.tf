resource "aws_db_instance" "dbmysql" {
  allocated_storage    = 20
  storage_type         = var.storage_typ
  engine               = var.engine
  engine_version       = var.engine_ver
  instance_class       = var.instance
  name                 = var.name
  username             = var.user
  password             = var.pass
  parameter_group_name = var.parameter
}
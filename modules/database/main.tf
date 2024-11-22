resource "aws_db_instance" "main" {
  identifier             = "primary-db"
  instance_class         = "db.t3.micro"
  engine                 = "mysql"
  username               = var.db_username
  password               = var.db_password
  allocated_storage      = 20
  db_subnet_group_name   = aws_db_subnet_group.main.id
}

resource "aws_db_subnet_group" "main" {
  name       = "main-subnet-group"
  subnet_ids = [var.private_subnet]
}

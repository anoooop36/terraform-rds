provider "aws" {
 access_key = var.access_key
 secret_key = var.secret_key
 region     = var.region
}

variable "access_key" {}
variable "secret_key" {}

variable "region" {
 type    = string
 default = "us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydbRds123"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

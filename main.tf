
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.my_sg.name]
  tags = {
    Name = "MyEC2Instance"
  }
}

//S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
}

//MySQL database
resource "aws_db_instance" "my_db" {
  identifier         = var.db_identifier
  allocated_storage    = var.db_allocated_storage
  engine               = "mysql"
  engine_version       = "8.4.7"
  instance_class       = "db.t3.micro"
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot  = true
}







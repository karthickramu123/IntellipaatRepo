//variables for EC2 instance
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-02dfbd4ff395f2a1b"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "aws_region" {
  description = "The AWS region to deploy the EC2 instance"
  default     = "us-east-1"
}

//security group variables
variable "sg_name" {
  description = "The name of the security group"
  default     = "my-security-group"
}

variable "sg_description" {
  description = "The description of the security group"
  default     = "Security group for my EC2 instance"
}

resource "aws_security_group" "my_sg" {
  name        = var.sg_name
  description = var.sg_description

  #SSH access
  ingress{
  description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    #HTTP access
    ingress{
      description = "Allow HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    #Https access
    ingress{
      description = "Allow HTTPS"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  //s3 bucket variable
  variable "bucket_name" {
    description = "The name of the S3 bucket"
    default     = "my-private-bucket-123456789"
  }

//MySQL database variables
variable "db_name" {
  description = "The name of the MySQL database"
  default     = "mydb"
}

variable "db_username" {
  description = "The username for the MySQL database"
  default     = "admin"
}

variable "db_password" {
  description = "The password for the MySQL database"
  default     = "password123"
}

variable "db_allocated_storage" {
  description = "The allocated storage for the MySQL database in GB"
  default     = 20
}

variable "db_identifier" {
  description = "The identifier for the MySQL database instance"
  default     = "my-mysql-db"
}
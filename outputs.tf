
//instance id
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}   

//ip address
output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

//DNS address
output "instance_public_dns" {
  description = "The public DNS name of the EC2 instance"
  value       = aws_instance.my_ec2.public_dns
}

//S3 bucket name
output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}

//MySQL database endpoint
output "db_endpoint" {
  description = "The endpoint of the MySQL database"
  value       = aws_db_instance.my_db.endpoint
}

//MySQL database identifier
output "db_identifier" {
  description = "The identifier of the MySQL database"
  value       = aws_db_instance.my_db.identifier
}


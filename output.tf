output "instance_ip" {
  value = aws_instance.nginx.public_ip
}

output "public_ip" {
  value = aws_instance.nginx.public_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "ami_id" {
  value = aws_instance.nginx.ami
}

resource "aws_instance" "nginx" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tenancy       = "default"

  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
  }

  user_data = file("${path.module}/cloud-init.yaml")

  depends_on = [aws_route.internet,
  aws_route_table_association.aassociation]

}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
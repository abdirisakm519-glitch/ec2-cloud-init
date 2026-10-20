variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "root_volume_size" {
  type    = number
  default = 8
}

variable "root_volume_type" {
  type    = string
  default = "gp3"
}

variable "ami_id" {
  type    = string
  default = "ami-0224ce6f9504665ee"
}


variable "subnet_cidr" {
  type    = string
  default = "10.0.0.0/20"
}
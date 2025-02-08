terraform {
  required_version = "~> 1.1"
  required_providers {
    aws = {
      version = "~>3.1"
    }
  }
}
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
}
resource "aws_instance" "myec2" {
 
  ami           = var.my_ami
  instance_type = var.ins_type
  tags = {
    Name = "myinstance "
  }
}
variable "my_region" {
  type = string
  default = "ap-south-1"
}
variable "access_key" { }
variable "secret key" { }
variable "my_ami" {
  type = string
  default = "ami-041ad17e36c87b683"
  }
 

variable "region" {}
variable "vpc_cidr" {}
variable "ig_cidr_block" {}
variable "public_subnet1" {}
variable "public_subnet2" {}
variable "public_subnet3" {}
variable "public_subnet_az" {}
variable "nat_cidr_block" {}
variable "private_subnet1" {}
variable "private_subnet2" {}
variable "private_subnet3" {}
variable "key_name" {}
variable "instance_type" {}
variable "ami" {}
variable "sg_name" {}
variable "ingress_cidr_blocks" {type = "list"}
variable "egress_cidr_blocks" {type = "list"}

variable "tags" {
  type = "map"
}
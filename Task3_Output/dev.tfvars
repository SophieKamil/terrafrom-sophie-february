region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
ig_cidr_block = "0.0.0.0/0"
public_subnet1 = "10.0.101.0/24"
public_subnet2 = "10.0.102.0/24"
public_subnet3 = "10.0.103.0/24"
public_subnet_az = "us-east-1c"
nat_cidr_block = "0.0.0.0/0"
private_subnet1 = "10.0.1.0/24"
private_subnet2 = "10.0.2.0/24"
private_subnet3 = "10.0.3.0/24"
key_name = "sophie_bastion"
instance_type = "t2.micro"
ami = "ami-0323c3dd2da7fb37d"
sg_name = "allow_tls"
ingress_cidr_blocks = ["0.0.0.0/0"]
egress_cidr_blocks = ["0.0.0.0/0"]


tags = {
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
    
}
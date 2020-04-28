provider "aws" {
  region = "us-east-1"
  version = "2.59"
}

terraform {
  required_version = "0.11.14"
}

resource "aws_key_pair" "us-east-1-key3" {
  key_name   = "sophies-bastion3"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}




resource "aws_route53_record" "www" {
  zone_id = "Z0134239684DDMYX6MVE"
  name    = "www.sophiekamil.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}





output "key_name" {
  value = "${aws_key_pair.us-east-1-key3.key_name}"
}

output "instance_id" {
  value = "${aws_instance.web.id}"
}

output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}

output "instance_arn" {
  value = "${aws_instance.web.arn}"
}


output "instance_dns" {
  value = "${aws_instance.web.public_dns}"
}

output "my_message" {
  value = "Login to Wordpress and change the password"
}

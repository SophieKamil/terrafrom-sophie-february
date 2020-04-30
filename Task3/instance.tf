resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data = "${file("user_data.sh")}"
  availability_zone = "us-east-1a"

  tags = {
    Name = "web"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
  }
}
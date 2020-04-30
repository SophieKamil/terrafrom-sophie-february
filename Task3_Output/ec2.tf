resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.us-east-1-key.key_name}"
  subnet_id = "${aws_subnet.public_subnet1.id}"
  user_data = "${file("user_data.sh")}"
  availability_zone = "${var.public_subnet_az}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]

  tags = "${var.tags}"
}
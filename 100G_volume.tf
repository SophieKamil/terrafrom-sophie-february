resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web.id}"
}
resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  key_name      = "${aws_key_pair.us-west-2-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 100
}
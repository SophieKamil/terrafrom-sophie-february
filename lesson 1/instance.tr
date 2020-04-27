resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      =     "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  tags = {
    Name = "HelloWorld"
  }
}

# resource "aws_volume_attachment" "ebs_att" {
#   device_name = "/dev/sdh"
#   volume_id   = "${aws_ebs_volume.example.id}"
#   instance_id = "${aws_instance.web.id}"
# }

# resource "aws_ebs_volume" "example" {
#   region = "us-west-2"
#   size              = 100G
# }
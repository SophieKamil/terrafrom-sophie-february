resource "aws_security_group" "allow_tls" {
  name        = "${var.sg_name}"
  description = "Allow TLS inbound traffic"
  vpc_id     = "${aws_vpc.main.id}"
  

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.ingress_cidr_blocks}"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks =  ["${var.ingress_cidr_blocks}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.egress_cidr_blocks}"]
  }

  tags = "${var.tags}"
}

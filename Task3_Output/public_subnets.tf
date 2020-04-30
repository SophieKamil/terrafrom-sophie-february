#public_subnet1
resource "aws_subnet" "public_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_subnet1}"

  tags = "${var.tags}"
}

#public_subnet2
resource "aws_subnet" "public_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_subnet2}"

  tags = "${var.tags}"
}

#public_subnet3
resource "aws_subnet" "public_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_subnet3}"

  tags = "${var.tags}"
}
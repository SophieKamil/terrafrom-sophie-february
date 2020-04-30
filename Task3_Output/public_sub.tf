#private_subnet1
resource "aws_subnet" "private_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_subnet1}"

  tags = "${var.tags}"
}

#private_subnet2
resource "aws_subnet" "private_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_subnet2}"

  tags = "${var.tags}"
}

#private_subnet3
resource "aws_subnet" "private_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_subnet3}"

  tags = "${var.tags}"
}
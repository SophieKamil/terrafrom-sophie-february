resource "aws_eip" "nat" {
  vpc      = true
}
resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.public_subnet1.id}"


  tags = "${var.tags}"
}
resource "aws_route_table_association" "gw1" {
  subnet_id      = "${aws_subnet.public_subnet1.id}"
  route_table_id = "${aws_route_table.rt_gw.id}"
}
resource "aws_route_table_association" "gw2" {
  subnet_id      = "${aws_subnet.public_subnet2.id}"
  route_table_id = "${aws_route_table.rt_gw.id}"
}
resource "aws_route_table_association" "gw3" {
  subnet_id      = "${aws_subnet.public_subnet3.id}"
  route_table_id = "${aws_route_table.rt_gw.id}"
}
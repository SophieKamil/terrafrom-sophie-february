output "vpc_id" {
  value = "${aws_vpc.main.id}"
}
output "vpc_cidr" {
  value = "${aws_vpc.main.id}"
}
output "public_subnet1_id" {
  value = "${aws_subnet.public_subnet1.id}"
}
output "public_subnet2_id" {
  value = "${aws_subnet.public_subnet2.id}"
}
output "public_subnet3_id" {
  value = "${aws_subnet.public_subnet3.id}"
}
output "private_subnet1_id" {
  value = "${aws_subnet.private_subnet1.id}"
}
output "private_subnet2_id" {
  value = "${aws_subnet.private_subnet2.id}"
}
output "private_subnet3_id" {
  value = "${aws_subnet.private_subnet3.id}"
}
output "igw_id" {
  value = "${aws_internet_gateway.gw.id}"
}


output "ngw_id" {
  value = "${aws_nat_gateway.ngw.id}"
}
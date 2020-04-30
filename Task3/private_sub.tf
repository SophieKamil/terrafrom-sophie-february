#private_subnet1
resource "aws_subnet" "private_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_subnet1"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
 }
}
#private_subnet2
resource "aws_subnet" "private_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private_subnet2"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
 }
}

 #private_subnet3
resource "aws_subnet" "private_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.3.0/24"

  tags = {
    Name = "private_subnet3"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
 }
}
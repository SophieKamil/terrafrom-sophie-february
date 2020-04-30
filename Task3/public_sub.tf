#public_subnet1
resource "aws_subnet" "public_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.101.0/24"

  tags = {
    Name = "public_subnet1"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
 }
}

#public_subnet2
resource "aws_subnet" "public_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.102.0/24"

  tags = {
    Name = "public_subnet1"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
 }
}

#public_subnet3
resource "aws_subnet" "public_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.103.0/24"

  tags = {
    Name = "public_subnet1"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
 }
}
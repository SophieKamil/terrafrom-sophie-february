resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "main"
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Sophie_Kamil"
  }
}

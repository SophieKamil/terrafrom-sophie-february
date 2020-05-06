region                 =       "us-east-1"
region_name            =       "virginia"
vpc_cidr               =       "10.0.0.0/16"
ig_cidr_block          =       "0.0.0.0/0"

public_cidr1           =       "10.0.101.0/24"
public_cidr2           =       "10.0.102.0/24"
public_cidr3           =       "10.0.103.0/24"

us-east-1a
"${var.region}${az1}"
us-east-1b
"${var.region}${az2}"
us-east-1c
"${var.region}${az3}"

az1                    =        "a"
az2                    =        "b"
za3                    =        "c"

private_cidr1          =        "10.0.1.0/24"
private_cidr2          =        "10.0.2.0/24"
private_cidr3          =        "10.0.3.0/24"

tags = {
    
    Name               =        "VPC_Project"
    Environment        =        "Dev"
    Department         =        "IT"
    Team               =        "Infrastructure"
    Created_by         =        "Sophie_Kamil"
    
}
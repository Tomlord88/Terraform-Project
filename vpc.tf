resource "aws_vpc" "tfvpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name="tfvpctags"
    }
}

##Creating subnet1
resource "aws_subnet" "tfsubnet1" {
    vpc_id = aws_vpc.tfvpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    tags ={
        Name = "tfsubnet1"
    }
}

##Creating subnet2
resource "aws_subnet" "tfsubnet2" {
    vpc_id = aws_vpc.tfvpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    tags ={
        Name = "tfsubnet2"
    }
}

##Creating gateway
resource "aws_internet_gateway" "tfgw" {
    vpc_id = aws_vpc.tfvpc.id
    tags ={
        Name = "tfgateway"
        
    }
}
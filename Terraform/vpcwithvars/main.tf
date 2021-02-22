# Created Custom vpc

resource "aws_vpc" "custom_vpc" {
    cidr_block = var.custom_vpc
    enable_dns_support = false
    tags = {
      "Name" = var.vpctag
    }
  
}

# Created Web Subnet

resource "aws_subnet" "web" {
    vpc_id = aws_vpc.custom_vpc.id
    cidr_block = cidrsubnet(var.custom_vpc,8,0)
    availability_zone = format("%s%s",var.region,var.availability_zones [0])
    tags = {
      "Name" = var.subnet_tags[0]
    }
  
}

# Created app Subnet

resource "aws_subnet" "App" {
    vpc_id = aws_vpc.custom_vpc.id
    cidr_block = cidrsubnet(var.custom_vpc,8,1)
    availability_zone = format("%s%s",var.region,var.availability_zones[1])
    tags = {
      "Name" = var.subnet_tags[1]
    }
}

# Created db Subnet

resource "aws_subnet" "Db" {
    vpc_id = aws_vpc.custom_vpc.id
    cidr_block = cidrsubnet(var.custom_vpc,8,2)
    availability_zone = format("%s%s",var.region,var.availability_zones[2])
    tags = {
      "Name" = var.subnet_tags[2]
    }
}

# Created mgmt Subnet

resource "aws_subnet" "Mgmt" {
    vpc_id = aws_vpc.custom_vpc.id
    cidr_block = cidrsubnet(var.custom_vpc,8,3)
    availability_zone = format("%s%s",var.region,var.availability_zones[3])
    tags = {
      "Name" = var.subnet_tags[3]
    }
}
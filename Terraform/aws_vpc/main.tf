# This block is for to create custom VPC in AWS.

resource "aws_vpc" "custom_vpc" {
    cidr_block = "192.168.0.0/16"
    enable_dns_support = false
    tags = {
      "Name" = "CustomVPC"
    }

  
}

# This block is for to create custom subnets in AWS.

# 1. Web Subnet

resource "aws_subnet" "web" {
    vpc_id = aws_vpc.custom_vpc.id
    cidr_block = "192.168.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
      "Name" = "webSubnet"
    }
          
}


# This block is for to create custom subnets in AWS.

# 2. App Subnet

resource "aws_subnet" "app" {
  vpc_id = aws_vpc.custom_vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1b"
  tags = {
    "name" = "appSubnet"
  }
  
}

# This block is for to create custom subnets in AWS.

# 3. db Subnet

resource "aws_subnet" "db" {
  vpc_id = aws_vpc.custom_vpc.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-east-1c"
  tags = {
    "name" = "dbSubnet"
  }
  
}

# This block is for to create custom subnets in AWS.

# 4. mgmt Subnet

resource "aws_subnet" "mgmt" {
  vpc_id = aws_vpc.custom_vpc.id
  cidr_block = "192.168.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    "name" = "mgmtSubnet"
  }
  
}
resource "aws_vpc" "custom_vpc" {
    cidr_block = "192.168.0.0/16"
    enable_dns_support = false
    tags = {
      "Name" = "CustomVPC"
    }

  
}
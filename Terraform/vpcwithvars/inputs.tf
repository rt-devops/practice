variable "region" {
    type  = string
    default = "us-east-1"
    description = "Region"
  
}

variable custom_vpc {
  type        = string
  default     = "192.168.0.0/16"
  description = "CIDR Range for Custom VPC"
}

variable vpctag {
  type        = string
  default     = "Terraform"
  description = "VPC Tag"
}

variable availability_zones {
  type        = list(string)
  default     = ["a","b","c","a"]
  description = "Availability Zones"
}

variable subnet_tags {
  type        = list(string)
  default     = ["web","app","db","mgmt"]
  description = "Tags for subnets"
}




variable name {
  type        = string
  default     = ""
  description = "description"
}

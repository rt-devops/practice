provider "aws" {
    region = "us-east-1"
    access_key = "YourAccesskey"
    secret_key = "YourSecretkey"
}

resource "aws_s3_bucket" "newbucket" {
    bucket = "Youruniquebucketname"
    tags = {
      "Name" = "Objects_Bucket"
      "Author"= "Terraform"
    }
    versioning {
      enabled = false
    }
}

resource "aws_s3_bucket_object" "object" {
    bucket = "Yourbucketname"
    key = "Filenameonthebucket"
    source = "path"
  
}
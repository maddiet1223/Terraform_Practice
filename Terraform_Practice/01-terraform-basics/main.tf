provider "aws" {
    region = "us-east-1"
}

#plan - execute (2 step execution)
# resource type is aws_s3_bucket and name in terraform by which it identifies the bucket is my_s3_bucket

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3-bucket-2011-kmaddie"
  versioning {
    enabled = true
  }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
}


# STATE 
# DESIRED - KNOWN - ACTUAL




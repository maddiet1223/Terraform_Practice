provider "aws" {
  region = "us-east-1"
}

#plan - execute (2 step execution)
# resource type is aws_s3_bucket and name in terraform by which it identifies the bucket is my_s3_bucket
#hcl - hashicorp control language

resource "aws_iam_user" "my_iam_users" {
  count = 3
  name  = "my_iam_user_${count.index}"
}
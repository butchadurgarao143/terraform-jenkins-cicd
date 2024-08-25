provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-durga-bucket"
  acl    = "public"
}

resource "aws_s3_bucket_object" "my_files" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "index1.html"
  source = "index1.html"
}


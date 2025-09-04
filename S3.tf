provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "bucket-name-byibuyfgbb-20250904"
  tags = {
    Name        = "MyTerraformBucket"
    Environment = "Dev"
  }
}

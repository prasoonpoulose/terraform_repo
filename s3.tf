resource "aws_s3_bucket" "static-website" {
  bucket = "s3-bucket-static-website-779846782777"

  tags = {
    Name        = "created through terraform"
    Environment = "Dev"
  }
}
#is bucket name same or different
provider "aws-tokyo" {
  region = "ap-east-1"  # Change to your desired region
}

# Website Bucket
resource "aws_s3_bucket" "projects_blog" {
  bucket = "japan-s3-Darknesses"  # Ensure the bucket name is globally unique

  acl    = "public-read"  # Set to public-read if you want to serve a static website
  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name        = "Projects Blog"
    Environment = "Dev"
  }
}

# Media Storage Bucket
resource "aws_s3_bucket" "media_storage" {
  bucket = "japan-s3-Darknesses"  # Ensure the bucket name is globally unique

  acl    = "private"  # Keep media storage private

  tags = {
    Name        = "Media Storage"
    Environment = "Dev"
  }
}
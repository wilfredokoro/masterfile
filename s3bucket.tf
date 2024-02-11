resource "aws_s3_bucket" "the-bucket2" {
  bucket = "terraform-statewest-lock1012101211"

  force_destroy = true
}
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.the-bucket2.id
  key    = "demo/cluster/"
}

resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = aws_s3_bucket.the-bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Add bucket encryption to hide sensitive state data
resource "aws_s3_bucket_server_side_encryption_configuration" "state_encryption" {
  bucket = aws_s3_bucket.the-bucket2.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
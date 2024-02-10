resource "aws_dynamodb_table" "terraform_remote_lock" {

  name         = "terraform-remote-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"

  }
}



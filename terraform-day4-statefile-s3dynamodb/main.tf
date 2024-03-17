resource "aws_s3_bucket" "dev" {
  bucket = "tfm-statefile-configure"
}

resource "aws_dynamodb_table" "tfm_dynamodb_statelock" {
  name = "tfm-dynamodb"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}
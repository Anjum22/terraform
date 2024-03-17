terraform {
  backend "s3" {
    bucket = "tfm-statefile-configure"
    key = "terraform.tfstate"
    dynamodb_table = "tfm-dynamodb"
    region = "ap-south-1"
    encrypt = true
  }
}
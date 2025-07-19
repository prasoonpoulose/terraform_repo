terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-zetatech"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-state-table-zetatech"
    encrypt        = true
  }
}


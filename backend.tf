terraform {
  backend "s3" {
    bucket         = "kadirovichproject-bucket"
    key            = "build1/mykey"
    region         = "eu-west-1"
    dynamodb_table = "KadirovichProject-Dynamo"
  }
}

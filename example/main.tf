provider "aws" {
  region = "us-east-2"
}

module "test" {
  source             = "../"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.60.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-chrys-bucket"
    key    = "terraform-chrys-bucket/dev"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
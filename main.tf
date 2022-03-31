terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region[0]
  alias  = "ireland"
}

provider "aws" {
  alias  = "london"
  region = var.region[1]
}

module "s3-webapp-ireland" {
  source  = "app.terraform.io/krk-organization/s3-webapp/aws"
  name    = var.name[1]
  region  = var.region[0]
  prefix  = var.prefix
  version = "1.0.0"
}

module "s3-webapp-london" {
  source  = "app.terraform.io/krk-organization/s3-webapp/aws"
  name    = var.name[0]
  region  = var.region[1]
  prefix  = var.prefix
  version = "1.0.0"
}
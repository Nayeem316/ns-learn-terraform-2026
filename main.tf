#############################
# AWS Provider
#############################

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = local.common_tags
  }
}

#############################
# Linode Provider
#############################

provider "linode" {
  token = var.linode_token
}

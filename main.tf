module "aws_kms" {
  # renovate: version=v1.5.0
  source = "git@github.com:terraform-aws-modules/terraform-aws-kms.git?ref=v1.5.0"
}

module "vpc" {
  # renovate: version=v5.0.0
  source = "git@github.com:terraform-aws-modules/terraform-aws-vpc.git?ref=26c38a66f12e7c6c93b6a2ba127ad68981a48671"
}
module "aws_kms" {
  # renovate: version=v1.5.0
  source = "git@github.com:terraform-aws-modules/terraform-aws-kms.git?ref=v1.5.0"
}

module "vpc" {
  # renovate: version=v4.0.2
  source = "git@github.com:terraform-aws-modules/terraform-aws-vpc.git?ref=faa7ad9cd9a9ec98c4e2dfc1e5b370b4558cd23b"
}
module "aws_kms" {
  # renovate: version=v1.0.1
  source = "git@github.com:terraform-aws-modules/terraform-aws-kms.git?ref=v1.0.1"

  is_enabled              = true
  aliases                 = ["${data.aws_iam_account_alias.current.account_alias}-${var.name}-key"]
  description             = "Backup KMS encryption key for ${var.name}"
  deletion_window_in_days = 30
  enable_key_rotation     = true
  policy                  = data.aws_iam_policy_document.iam_policy.json
}

module "aws_kms" {
  # renovate: version=v1.0.1
  source = "git@github.com:terraform-aws-modules/terraform-aws-kms.git?ref=693ec0295f4faa1430d7b039ba30ad89363a7b5c"

  is_enabled              = true
  aliases                 = ["${data.aws_iam_account_alias.current.account_alias}-${var.name}-key"]
  description             = "Backup KMS encryption key for ${var.name}"
  deletion_window_in_days = 30
  enable_key_rotation     = true
  policy                  = data.aws_iam_policy_document.iam_policy.json
}


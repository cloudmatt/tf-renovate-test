module "aws_kms" {
  # renovate: datasource=github-releases depName=terraform-aws-modules/terraform-aws-kms version=v1.0.1
  source = "git@github.com:terraform-aws-modules/terraform-aws-kms.git?ref=v1.0.1"

  is_enabled              = true
  aliases                 = ["${data.aws_iam_account_alias.current.account_alias}-${var.name}-key"]
  description             = "Backup KMS encryption key for ${var.name}"
  deletion_window_in_days = 30
  enable_key_rotation     = true
  policy                  = data.aws_iam_policy_document.iam_policy.json
}

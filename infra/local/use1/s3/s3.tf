module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  create_bucket           = local.resource_context.bucket.create_bucket
  bucket                  = local.resource_context.bucket.bucket_name
  acl                     = local.resource_context.bucket.acl
  force_destroy           = local.resource_context.bucket.force_destroy
  block_public_acls       = local.resource_context.bucket.block_public_acls
  block_public_policy     = local.resource_context.bucket.block_public_policy
  ignore_public_acls      = local.resource_context.bucket.ignore_public_acls
  restrict_public_buckets = local.resource_context.bucket.restrict_public_buckets
  versioning              = local.resource_context.bucket.versioning
  policy                  = local.resource_context.bucket.policy

  tags = local.common_tags
}

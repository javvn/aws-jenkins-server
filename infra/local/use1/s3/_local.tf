locals {
  context    = yamldecode(file(var.config_file)).context
  s3_context = yamldecode(templatefile(var.config_file, local.context)).s3

  common_tags = {
    env       = local.context.env
    name      = local.context.name
    alias     = local.context.alias
    terraform = local.context.terraform
    project   = local.context.project
  }

  resource_context = {
    bucket = merge(local.s3_context.bucket, {
      policy = jsonencode(local.s3_context.bucket.policy)
    })
  }
}
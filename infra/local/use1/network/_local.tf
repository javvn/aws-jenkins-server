locals {
  context         = yamldecode(file(var.config_file)).context
  network_context = yamldecode(templatefile(var.config_file, local.context)).network

  common_tags = {
    env       = local.context.env
    name      = local.context.name
    alias     = local.context.alias
    terraform = local.context.terraform
    project   = local.context.project
  }

  resource_context = {
    vpc = local.network_context.vpc
    #    sg = local.network_context.sg
  }
}
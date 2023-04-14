module "vpc" {
  source = "terraform-aws-modules/vpc/aws"


  create_vpc = local.resource_context.vpc.create_vpc
  name       = local.resource_context.vpc.name
  cidr       = local.resource_context.vpc.cidr_block
  azs        = local.resource_context.vpc.azs

  public_subnets  = local.resource_context.vpc.public_subnets
  private_subnets = local.resource_context.vpc.private_subnets

  enable_nat_gateway     = local.resource_context.vpc.enable_nat_gateway
  enable_vpn_gateway     = local.resource_context.vpc.enable_vpn_gateway
  one_nat_gateway_per_az = local.resource_context.vpc.one_nat_gateway_per_az

  tags = local.common_tags
}


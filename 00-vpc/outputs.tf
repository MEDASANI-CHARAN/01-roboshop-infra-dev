output "azs_info" {
  value = module.vpc.az_info.names
}

output "default_vpc" {
  value = module.vpc.default_vpc
}

output "default_vpc_main" {
  value = module.vpc.default_vpc_main
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
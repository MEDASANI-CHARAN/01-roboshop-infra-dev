output "frontend_sg_id" {
  value = module.frontend.sg_id
}

output "bastion_sg_id" {
  value = module.bastion.sg_id
}

output "backend-alb_sg_id" {
  value = module.backend-alb.sg_id
}

output "frontend-alb_sg_id" {
  value = module.frontend-alb.sg_id
}

output "vpn_sg_id" {
  value = module.vpn.sg_id
}

output "mongodb_sg_id" {
  value = module.mongodb.sg_id
}

output "catalogue_sg_id" {
  value = module.catalogue.sg_id
}

output "user_sg_id" {
  value = module.user.sg_id
}

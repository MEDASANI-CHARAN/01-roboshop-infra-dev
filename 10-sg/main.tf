module "frontend" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.frontend_sg_name
  sg_description = var.frontend_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "bastion" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.bastion_sg_name
  sg_description = var.bastion_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

# bastion accepting connections from my laptop
resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.bastion.sg_id
}


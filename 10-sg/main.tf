module "frontend" {
  source = "../../02-terraform-aws-sg-module"
  project = var.project
  environment = var.environment
  sg_name = var.frontend_sg_name
  sg_description = var.frontend_sg_description
  vpc_id = data.aws_ssm_parameter.vpc_id.id
  sg_tags = var.sg_tags
}